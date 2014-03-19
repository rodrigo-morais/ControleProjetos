# encoding: utf-8
class IsFloatValidator < ActiveModel::EachValidator  
  def validate_each(object, attribute, value)  
    attribute = options[:attribute] || attribute
    unless value.to_s.valid_float? || object.errors[attribute].include?(options[:message])
      object.errors[attribute] << (options[:message] || "preencha com um valor numérico")  
    end  
  end  
end 
