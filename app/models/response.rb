class Response
  attr_accessor :message, :code, :header, :result, :page, :foot

  def initialize
    @message = 'success'
    @code = 200
    @header = ''
    @page = nil
    @foot = { opertaion_time: Time.now, version: '', host_name: 'localhost' }
  end
end