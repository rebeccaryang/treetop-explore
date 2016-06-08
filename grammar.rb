#
module Grammar
  include Treetop::Runtime
  #
  class ComparisonOperation < Treetop::Runtime::SyntaxNode
    def eval
      case operator.text_value
      when '='
        left_side.text_value == right_side.text_value
      end
    end
  end
end
