.PHONY: all clean create curl_request end

all: clean create curl-request end

clean: 
	rm -f puzzle.txt	
	rm -f puzzle-info.txt
	rm -f puzzle-input.txt

create:
	@touch puzzle.txt
	@touch puzzle-info.txt
	@touch puzzle-input.txt

curl-request:
	@bash curl-request.sh

# cs:
# 	@dotnet run

end:
	@rm puzzle-info.txt
