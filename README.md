# Vim Terminal Dispatch

## Getting Started

1. Run terminal in split: `:vsplit | terminal`
1. Focus window with: `<leader>!`
1. Select Command to run: `Shift+V`
1. To dispatch command to terminal: Press `g`

## Example

```sh
# Works with any shell
ls
echo "hello world"

# Can work with any console
irb

# Finish
exit
```

```ruby
# It Works
message = ["hello", "world"].join(" ")
message.split(" ").first
```
