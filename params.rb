# Params
class Params
  attr_accessor :account_name
  attr_accessor :account_key
  attr_accessor :container
  attr_accessor :object

  def initialize
    @account_name = ENV['account_name']
    @account_key = ENV['account_key']
    @container = ENV['container']
    @object = ENV['object']
  end

  def print
    Log.info('Params:')
    Log.print("account_name: #{Log.secure_value(@account_name)}")
    Log.print("account_key: #{Log.secure_value(@account_key)}")
    Log.print("container: #{@container}")
    Log.print("object: #{@object}")
  end

  def validate
    raise 'missing: account_name' if @account_name.to_s.empty?
    raise 'missing: account_key' if @account_key.to_s.empty?
    raise 'missing: container' if @container.to_s.empty?
    raise 'missing: object' if @object.to_s.empty?
  end
end
