# Barnesandnoble

**Barnesandnoble** is a Ruby wrapper to the Barnes and Noble Product Web Services.

## Usage

Set your API key with the environment variable `BN_API_KEY`.

Create a request:

```ruby
request = Barnesandnoble.new
```

Run a query:

```ruby
params = {
  "Ean" => 9781593083342,
  "ProductCode" => "Book"
}
response = request.product_lookup(query: params)
```

Parse the response into a Hash:

```ruby
response.to_h
```

Or pass it to a custom parser:

```ruby
MyParser.new(response.body)
```
