# Build a class EmailAddressParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

class EmailAddressParser
    attr_reader :addresses
    def initialize(addresses)
        @addresses = addresses
    end

    def parse
        # if @addresses.include?(',')
        #     return @addresses.split(', ')
        # else
        #     return @addresses.split(' ')
        # end
        addresses = []

        comma_split = @addresses.split(', ')
        if comma_split.include?(' ')
            comma_split.each do |entry|
                addresses.push(entry.split(' '))

            end
        else
            addresses.push(comma_split)
        end
        return addresses[0]

        # return double_split

    end
end