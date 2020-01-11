require "minitest/autorun"
require "./lib/gate"
require "./lib/ticket"

class GateTest < Minitest::Test
    def test_umeda_to_mikuni_when_fare_is_not_enough
        umeda = Gate.new(:umeda)
        juso = Gate.new(:juso)
        
        ticket = Ticket.new(150)
        umeda.enter(ticket)
        refuse mikuni.exit(ticket)
    end
end
