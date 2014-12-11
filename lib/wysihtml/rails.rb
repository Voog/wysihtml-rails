require "wysihtml/rails/version"

module Wysihtml
  module Rails
    class Engine < ::Rails::Engine
      isolate_namespace Wysihtml::Rails
    end
  end
end
