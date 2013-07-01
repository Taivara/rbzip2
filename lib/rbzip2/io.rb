# This code is free software; you can redistribute it and/or modify it under
# the terms of the new BSD License.
#
# Copyright (c) 2011-2013, Sebastian Staudt

class RBzip2::IO

  def initialize(io)
    @io           = io
    @compressor   = Ruby::Compressor.new io
    @decompressor = Ruby::Decompressor.new io
  end

  def close
    @compressor.close
    @decompressor.close
  end

  def read
    @decompressor.read
  end

  def write(data)
    @compressor.write data
  end

end
