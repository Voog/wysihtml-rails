require "wysihtml5x/rails/version"

module Wysihtml5x
  module Rails
    class Engine < ::Rails::Engine
      isolate_namespace Wysihtml5x::Rails
    end
  end
end
