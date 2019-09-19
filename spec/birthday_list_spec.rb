require 'birthday_list'
require 'timecop'

describe BirthdayList do

  describe '#store_birthday' do
    it { is_expected.to respond_to(:add).with(2).arguments }

    it 'adds friend\'s birthday' do
      birthday_list = BirthdayList.new

      expect(birthday_list.add("Bob", "13 April 1985")).to eq [{ name: "Bob", birthday: "13 April 1985" }]
    end

    it 'shows friends birthdays' do
      birthday_list = BirthdayList.new
      birthday_list.add("Bob", "13 April 1985")
      birthday_list.add("Amber", "20 May 1987")

      expect{birthday_list.show}.to output("Bob, 13 April 1985\nAmber, 20 May 1987\n").to_stdout
    end
  end

end
