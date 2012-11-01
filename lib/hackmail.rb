require "json"
require "open-uri"
require "hackmail/version"

module Hackmail
  autoload :Fetch, 'hackmail/fetch'
  autoload :Item, 'hackmail/item'
  autoload :ItemSet, 'hackmail/item_set'

  class FetchError < StandardError; end;
end
