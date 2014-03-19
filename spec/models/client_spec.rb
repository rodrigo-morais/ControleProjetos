# -*- coding: utf-8 -*-
require 'spec_helper'

describe Client do

  context 'validates column name' do

    it 'validates presence of name' do
      client = Client.new
      client.valid?
      client.errors.should have_key(:name), "Name isn't present in client."
    end

    it 'validates length of name when has less than 5 characters' do
      client = Client.new
      client.name = 'João'
      client.valid?
      client.errors.should have_key(:name), "Name hasn't less than 5 characters."
    end

    it 'validates length of name when has 40 characters' do
      client = Client.new
      client.name = 'empresa de calçados masculinos e femininos limitada do brasil'
      client.valid?
      client.errors.should have_key(:name), "Name has more than 40 characters."
    end

  end

  context 'validates column address' do

    it 'validates presence of address' do
      client = Client.new
      client.valid?
      client.errors.should have_key(:address), "Address isn't present in client."
    end

    it 'validates length of address when has less than 8 characters' do
      client = Client.new
      client.address = 'Rua A'
      client.valid?
      client.errors.should have_key(:name), "Address hasn't less than 8 characters."
    end

    it 'validates length of address when has 80 characters' do
      client = Client.new
      client.name = 'Avenida Osmundo do Santos Pellegrine do Brasil Varonil de Jundiai'
      client.valid?
      client.errors.should have_key(:name), "Address has more than 80 characters."
    end

  end

  context 'validates column number' do

    it 'validates presence of number' do
      client = Client.new
      client.valid?
      client.errors.should have_key(:number), "Number isn't present in client."
    end

    it 'validates number when less than 0' do
      client = Client.new
      client.number = -1
      client.valid?
      client.errors.should have_key(:number), "Number is less than 0 in client."
    end

  end

  context 'validates column ddd' do

    it 'validates presence of ddd' do
      client = Client.new
      client.valid?
      client.errors.should have_key(:ddd), "ddd isn't present in client."
    end

    it 'validates length of ddd less than 2 characters' do
      client = Client.new
      client.ddd = '1'
      client.valid?
      client.errors.should have_key(:ddd), "ddd with less than 2 characters."
    end

    it 'validates length of ddd greater than 2 characters' do
      client = Client.new
      client.ddd = '111'
      client.valid?
      client.errors.should have_key(:ddd), "ddd with grater than 2 characters."
    end

    it 'validates length of ddd equal 2 characters' do
      client = Client.new
      client.ddd = '11'
      client.valid?
      client.errors.should_not have_key(:ddd), "ddd equal 2 characters."
    end

    it 'validates only numbers in ddd' do
      client = Client.new
      client.ddd = 'd1'
      client.valid?
      client.errors.should have_key(:ddd), "ddd with characters alphanumeric."
    end

  end

  context 'validates column phone' do

    it 'validates presence of phone' do
      client = Client.new
      client.valid?
      client.errors.should have_key(:phone), "Phone isn't present in client."
    end

    it 'validates length of phone less than 8 characters' do
      client = Client.new
      client.phone = '1'
      client.valid?
      client.errors.should have_key(:phone), "Phone with less than 8 characters."
    end

    it 'validates length of phone greater than 9 characters' do
      client = Client.new
      client.phone = '9869222051'
      client.valid?
      client.errors.should have_key(:phone), "Phone with grater than 9 characters."
    end

    it 'validates length of phone equal 8 characters' do
      client = Client.new
      client.phone = '32269772'
      client.valid?
      client.errors.should_not have_key(:phone), "Phone equal 8 characters."
    end

    it 'validates only numbers in phone' do
      client = Client.new
      client.phone = 'dddddddd'
      client.valid?
      client.errors.should have_key(:phone), "Phone with characters alphanumeric."
    end

  end

  context 'validates column time_value' do

    it 'validates presence of time_value' do
      client = Client.new
      client.valid?
      client.errors.should have_key(:time_value), "Time value isn't present in client."
    end

    it 'validates if time_value is positive' do
      client = Client.new
      client.time_value_string = "-1"
      client.valid?
      client.errors.should have_key(:time_value), "Time value must be positive."
    end

    it 'validates correct value to time_value' do
      client = Client.new
      client.time_value_string = "51.03"
      client.valid?
      client.errors.should_not have_key(:time_value), "Time value with correct value."
    end

    it "validates when time_value receive decimal value in portugues" do
      client = Client.new
      client.time_value_string = "51,12"
      client.valid?
      client.errors.should_not have_key(:time_value), "Time value with correct value when filled with decimal value in portugues."
    end

    it "validates when time_value receive value in with caracteres alphanumeric" do
      client = Client.new
      client.time_value_string = "51r12"
      client.valid?
      client.errors.should have_key(:time_value), "Time value with incorrect value when filled with alphanumeric caracteres."
    end

  end

end
