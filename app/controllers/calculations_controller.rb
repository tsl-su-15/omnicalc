class CalculationsController < ApplicationController
    def word_count_form
        render 'word_count_form'
    end

    def word_count
        @text = params[:user_text]
        @special_word = params[:user_word]

        # ========================================================
        # Your code goes below.
        # The text the user input is in the string @text.
        # The special word the user input is in the string @special_word.
        # ========================================================

        @word_count = @text.split.length

        @character_count_with_spaces = @text.length

        @character_count_without_spaces = @text.gsub(" ",'').length
        # @character_count_without_spaces = @character_count_with_spaces - (@word_count - 1)

        sanitized_text = @text.downcase
        sanitized_word = @special_word.downcase
        @occurrences = sanitized_text.split.count(sanitized_word)
    end

    def loan_payment_form
        render 'loan_payment_form'
    end

    def loan_payment
        @apr = params[:annual_percentage_rate].to_f
        @years = params[:number_of_years].to_i
        @principal = params[:principal_value].to_f

        # =====================================================
        # Your code goes below.
        # You can use this formula for reference:
        # http://www.financeformulas.net/Loan_Payment_Formula.html
        # =====================================================

        present_value = @principal
        rate_per_period = @apr / 100 / 12
        number_periods = @years * 12

        @monthly_payment = (rate_per_period*present_value)/(1 - (1+rate_per_period)**(-number_periods))
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
