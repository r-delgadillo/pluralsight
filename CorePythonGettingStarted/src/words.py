#!/usr/bin/env python3
# ^^^ Called "Shebang" allows the file to be ran without
# specyfing "python"
"""Retrieve and print words from a URL.

    Usage:
        python3 words.py <URL>
"""
import sys
from urllib.request import urlopen


def fetch_words(url):
    """Fetch a list of from a URL.
    
        Args:
            url: The URL of a UTF-* text document.
            
        Returns:
            A list of strings containing the words from
            the document.
    """
    story = urlopen(url)
    story_words = []
    
    for line in story:
        line_words = line.decode('utf-8').split()
        for word in line_words:
            story_words.append(word)
    story.close()
    
    return story_words


def print_items(items):
    """Print items one per line.
    
        Args:
            An iterable series of printable items.
    """
    for item in items:
        print(item)


def main(url):
    """Print each word from a text document from at a URL.
    
        Args: 
            url: The URL of a UTF-8 text document.
    """
    words = fetch_words(url)
    print_items(words)
    
    
if __name__ == '__main__':
    # fall back hard code this url 'http://sixty-north.com/c/t.txt'
    url = sys.argv[1] # The 0th arg is the module filename.
    main(url)