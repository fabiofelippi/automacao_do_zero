class AvengersHeadQuarters
    attr_accessor :list

    def initialize
        self.list = []
    end

    def adicionar(avenger)
        #puts self.list.class
        self.list.push(avenger)
    end
end

# TDD
describe AvengersHeadQuarters do

    it 'deve adicionar um vingador' do
        hq = AvengersHeadQuarters.new

        hq.adicionar('Spiderman')
        expect(hq.list).to eql ['Spiderman']
    end

    it 'deve adicionar um vingador via INCLUDE' do
        hq = AvengersHeadQuarters.new

        hq.adicionar('Spiderman')
        expect(hq.list).to include 'Spiderman'
    end

    it 'deve adicionar uma lista de vingadores' do
        hq = AvengersHeadQuarters.new
        hq.adicionar('Thor')
        hq.adicionar('Hulk')
        hq.adicionar('Spiderman')

        res = hq.list.size > 0

        expect(res).to be true  
    end

    it 'Thor deve ser o primeiro da lista' do
        hq = AvengersHeadQuarters.new
        hq.adicionar('Thor')
        hq.adicionar('Hulk')
        hq.adicionar('Spiderman')
        expect(hq.list).to start_with('Thor')
    end

    it 'IronMan deve ser o ultimo da lista' do
        hq = AvengersHeadQuarters.new
        hq.adicionar('Thor')
        hq.adicionar('Hulk')
        hq.adicionar('Spiderman')
        hq.adicionar('IronMan')
        expect(hq.list).to end_with('IronMan')
    end

    it 'deve conter o sobrenome' do
        avenger = 'Peter Parker'
        expect(avenger).to match(/Parker/)
        expect(avenger).not_to match(/Panger/)
    end
    
end
