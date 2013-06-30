###
### $Rev$
### $Release$
### $Copyright$
###

require 'kwartz/converter'
require 'kwartz/translator'
require 'kwartz/binding/ruby'



module Kwartz



  ##
  ## directive handler for eRuby
  ##
  class JsrenderHandler < RubyHandler
  end
  Handler.register_class('jsrender', JsrenderHandler)



  ##
  ## translator for eRuby
  ##
  class JsrenderTranslator < BaseTranslator
    include RubyExpressionParser


    JSRENDER_EMBED_PATTERNS = [
      '',    '',        # statement
      '{{:',   '}}',        # expression
      '{{>',   '}}',        # escaped expression
    ]


    def initialize(properties={})
      super(JSRENDER_EMBED_PATTERNS, properties)
    end


  end #class
  Translator.register_class('jsrender', JsrenderTranslator)



end #module
