class CalculationsController < ApplicationController
    def word_count_form
        render 'word_count_form'
    end

    def word_count
        @word_stat = WordStat.new(params[:user_text],
                                    params[:user_word])
    end

    def loan_payment_form
        render 'loan_payment_form'
    end

    def loan_payment
        @loan_payment = LoanPayment.new(
                                params[:annual_percentage_rate],
                                params[:number_of_years],
                                params[:principal_value])
    end

    def time_between_form
        render 'time_between_form'
    end

    def time_between
        @starting = Chronic.parse(params[:starting_time])
        @ending = Chronic.parse(params[:ending_time])

        # =====================================================
        # Your code goes below.
        # The start time is in the Time @starting.
        # The end time is in the Time @ending.
        # The number of years the user input is in the integer @years.
        # The principal value the user input is in the decimal @principal.
        # =====================================================

        @seconds = @ending - @starting
        @minutes = @seconds/1.minute
        @hours = @seconds/1.hour
        @days = @seconds/1.day
        @weeks = @seconds/1.week
        @months = @seconds/1.month
        @years = @seconds/1.year
        render 'time_between'
    end

    def descriptive_statistics_form
        render 'descriptive_statistics_form'
    end

    def descriptive_statistics
        @stat = Stat.new(params[:list_of_numbers])

        render  'descriptive_statistics'
    end

    def range(max, min)
        return max - min
    end
end
