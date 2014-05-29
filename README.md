**BarnesAndNoble** is a Ruby wrapper to the Barnes and Noble Product Web Services

## Usage

### Create a request:

```ruby
req = BarnesAndNoble.new(api_token)
```
#### Run a product lookup:

```ruby
params = {
  'Ean' => 9781593083342,
  'ProductCode' => 'Book'
}
res = req.get('ProductLookup', params)
```

#### Get categories for a product:

```ruby
params = {
  'Ean' => 9781593083342,
  'ProductCode' => 'Book'
}
res = req.get('GetCategories', params)
```

#### Get related bought products:

```ruby
params = {
  'Ean' => 9781593083342,
  'ProductCode' => 'Book'
}
res = req.get('GetPwbab', params)
```

#### Get Top10 :

```ruby
params = {
  'Top10SearchDomain' => 'Book',
}
res = req.get('Top10', params)
```

#### Run a products search by keywords:

```ruby
params = {
  'SearchType': 'Book',
  'Start': 1,
  'Size': 5,
  'ProductSort': 'BestSelling'
  'Keyword': 'Foucault'
}
res = req.get('ProductSearch', params)
```

Parse the response into a Ruby Hash:

```ruby
res.to_h
```

Or pass its body into a custom parser:

```ruby
MyParser.new(res.body)
```
