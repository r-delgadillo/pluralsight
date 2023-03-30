package main

import (
	"testing"

	"github.com/stretchr/testify/assert"
	"github.com/stretchr/testify/require"
)

func TestHadAGoodGame(t *testing.T) {
	t.Run("sad path: invalid stats", func(t *testing.T) {
		s := Stats{Name: "Sam Cassell",
			Minutes:   34.1,
			Points:    -19,
			Assists:   8,
			Turnovers: -4,
			Rebounds:  11,
		}

		_, err := hadAGoodGame(s)

		require.NotNil(t, err)
	})

	t.Run("happy path: good game", func(t *testing.T) {
		s := Stats{Name: "Dejounte Murray",
			Minutes:   34.1,
			Points:    19,
			Assists:   8,
			Turnovers: 4,
			Rebounds:  11,
		}
		isAGoodGame, err := hadAGoodGame(s)
		require.Nil(t, err)
		assert.True(t, isAGoodGame)
	})
}

func TestHadAGoodGameTableDriven(t *testing.T) {
	tests := []struct {
		name     string
		stats    Stats
		goodGame bool
		wantErr  string
	}{
		{"sad path: invalid stats", Stats{Name: "Sam Cassell",
			Minutes:   34.1,
			Points:    -19,
			Assists:   8,
			Turnovers: -4,
			Rebounds:  11,
		}, false, "stat lines cannot be negative",
		},
		{"happy path: good game", Stats{Name: "Dejounte Murray",
			Minutes:   34.1,
			Points:    19,
			Assists:   8,
			Turnovers: 4,
			Rebounds:  11,
		}, true, ""},
	}
	for _, tt := range tests {
		isAGoodGame, err := hadAGoodGame(tt.stats)
		if tt.wantErr != "" {
			assert.Contains(t, err.Error(), tt.wantErr)
		} else {
			assert.Equal(t, tt.goodGame, isAGoodGame)
		}
	}
}
