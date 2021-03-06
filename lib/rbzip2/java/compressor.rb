# This code is free software; you can redistribute it and/or modify it under
# the terms of the new BSD License.
#
# Copyright (c) 2013, Sebastian Staudt

class RBzip2::Java::Compressor

  def initialize(io)
    @io = RBzip2::Java::BZip2CompressorOutputStream.new io.to_outputstream
  end

  def flush
    @io.flush
  end

  def close
    @io.close
  end

  def write(bytes)
    raise 'stream closed' if @io.nil?

    @io.write bytes.to_java_bytes
  end

end
