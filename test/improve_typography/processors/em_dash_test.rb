require 'test_helper'

module ImproveTypography
  module Processors
    describe EmDash do
      describe "do's" do
        it { EmDash.call('you - me').must_equal 'you—me' }
        it { EmDash.call('insert - sentence - here').must_equal 'insert—sentence—here' }

        it { EmDash.call('you -- me').must_equal 'you—me' }
        it { EmDash.call('insert -- sentence -- here').must_equal 'insert—sentence—here' }

        it { EmDash.call('insert --- sentence').must_equal 'insert—sentence' }
      end

      describe "options" do
        it { EmDash.call('you - me', em_dash_sign: ' – ').must_equal 'you – me' }
      end

      describe "dont's" do
        # it { EmDash.call('2-5').wont_equal '2-5' }
      end
    end
  end
end
