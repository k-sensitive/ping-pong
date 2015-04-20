require('rspec')
require('ping_pong')

describe('Fixnum#ping_pong') do
	it("prints out an array of numbers from 1 to n") do
		expect(2.ping_pong()).to(eq([1,2]))
	end

	it("n is divisible by 3 and 5, switch it with 'ping-pong'") do
		expect(15.ping_pong()).to(eq([1,2,"ping",4,"pong","ping",7,8,"ping","pong",11,"ping",13,14,"ping-pong"]))
	end

	it("n is divisible by 3, switch it with 'ping'") do
		expect(3.ping_pong()).to(eq([1,2,"ping"]))
	end

	it("n is divisible by 5, switch it with 'pong'") do
		expect(5.ping_pong()).to(eq([1,2,"ping",4,"pong"]))
	end
end
