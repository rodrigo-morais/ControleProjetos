# encoding: utf-8
class Client < ActiveRecord::Base
  has_many :users, dependent: :destroy

  before_validation :format_time_value

  attr_accessor :time_value_string

  validates :name, presence: true, length: {minimum: 5, maximum: 40, :message => "preencher com no mínimo 5 e no máximo 40 caracteres"}, uniqueness: { :message => "já possui cadastro" }
  validates :address, presence: true, length: {minimum: 8, maximum: 80, :message => "preencher com no mínimo 8 e no máximo 80 caracteres"}
  validates :number, presence: true, :numericality => {:greater_than => 0, :message => "preencher com número inteiro e positivo"}
  validates :complement, presence: true
  validates :ddd, presence: true, :format => { :with => /\A[0-9]{2}\z/, :message => "preencher com um número positivo de dois digitos" }
  validates :phone, presence: true, :format => { :with => /\A[0-9]{8,9}\z/, :message => "preencher com um número positivo com no mínimo 8 e no máximo 9 caracteres" }
  validates :time_value, presence: true, :numericality => {:greater_than => 0, :message => "preencher com um valor númerico e positivo" }
  validates :time_value_string, :is_float => { :attribute => "time_value", :message => "preencher com um valor númerico e positivo" }

  private
  def format_time_value
    self.time_value_string = self.time_value_string.to_s.gsub(',', '.')
    if self.time_value_string == ''
      self.time_value = ''
    elsif self.time_value_string.valid_float?
      self.time_value = self.time_value_string 
    end
  end

end
