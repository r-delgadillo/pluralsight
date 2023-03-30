package main

import (
	"testing"

	"github.com/stretchr/testify/suite"
)

var foo string

type GameTestSuite struct {
	suite.Suite
}

func (suite *GameTestSuite) BeforeTest(_, _ string) {
	// execute code before test starts
	suite.T().Log("\nBefore\n")
}

func (suite *GameTestSuite) AfterTest(_, _ string) {
	// execute code after test finishes
	suite.T().Log("\nAfter\n")
}

func (suite *GameTestSuite) SetupSuite() {
	// create relevant resources
	suite.T().Log("\nSetup\n")
}

func TestGameTestSuite(t *testing.T) {
	suite.Run(t, new(GameTestSuite))
}

func (suite *GameTestSuite) TestHadAGoodGame() {
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
	suite.T().Log("\n---------------------------------\n")
	for _, tt := range tests {
		suite.T().Run("test hadAGoodGame(): "+tt.name, func(t *testing.T) {
			isAGoodGame, err := hadAGoodGame(tt.stats)
			if tt.wantErr != "" {
				suite.Require().Contains(err.Error(), tt.wantErr)
			} else {
				suite.Require().Equal(tt.goodGame, isAGoodGame)
			}
		})
	}
}
