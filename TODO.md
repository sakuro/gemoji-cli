# Planned Features for gemoji-cli

## Get Command

Retrieve a specific emoji in various formats:

```bash
# Unicode format (default)
gemoji get smile
😊

# HTML entity
gemoji get smile --format html
&#x1F60A;

# GitHub markdown
gemoji get smile --format markdown
:smile:
```

## Info Command

Display detailed information about a specific emoji:

```bash
gemoji info smile
```

Expected output:
```
Name: smile
Unicode: 😊
HTML: &#x1F60A;
Markdown: :smile:
Description: smiling face with smiling eyes
Aliases: ["blush"]
Tags: ["happy", "joy", "pleased"]
```

## Implementation Notes

- Both commands should support fuzzy matching for emoji names
- Format options for `get` command: unicode (default), html, markdown
- Info command should display all available metadata from the gemoji library
- Consider adding support for copying the output to clipboard
