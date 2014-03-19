# encoding: utf-8
class IsClientValidator < ActiveModel::EachValidator  
  def validate_each(object, attribute, value)  
    attribute = attribute
    
    unless Client.exists?(value) || object.admin || object.errors[attribute].include?(options[:message])
      object.errors[attribute] << (options[:message] || "não associado")  
    end  
  end  
end 
