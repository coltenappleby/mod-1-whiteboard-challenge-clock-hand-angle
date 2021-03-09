def clock_angle(time)
    # code your solution here
    nums = time.split(":")
    min_angle = 360 - (nums[1].to_i * 6)
    hour_angle = 360 - (nums[0].to_i * 30 + nums[1].to_i * 0.5)

    #puts time
    if time == "12:00"
        return 0
    end

    if min_angle < hour_angle
        return min_angle + (360-hour_angle)
    else
        return min_angle - hour_angle
    end
end


puts clock_angle("3:00")
puts clock_angle("9:00")
puts clock_angle("3:27")