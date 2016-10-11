# Hello World!
class HelloTrema < Trema::Controller
  def start(_args)
    logger.info "#{self.class.name} started."
  end

  def switch_ready(datapath_id)
    logger.info "Hello #{datapath_id.to_hex}!"
  end

  def switch_disconnected(dpid)
    logger.info "Bye #{dpid.to_hex}"
  end

  def switch_disconnected(dpid)
    logger.info "Bye #{dpid.to_hex}"
  end
end
