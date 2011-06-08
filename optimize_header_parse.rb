#https://github.com/mikel/mail/issues/115#issuecomment-832819
module Mail
    class MessageIdsElement
            def initialize(string)
                    @message_ids = string.scan(/<([^>]*)>/).map { |m| m[0] }
            end
    end
    class ReceivedElement
            def initialize(string)
                    if m = string.match(/(.*);(.*)/)
                            begin
                                    @info = m[1]
                                    @date_time = ::DateTime.parse m[2]
                            rescue
                                    @info = string
                                    @date_time = ::DateTime.parse "1980/1/1"
                            end
                    else
                            @info = string
                            @date_time = ::DateTime.parse "1980/1/1"
                    end
            end
    end
end

