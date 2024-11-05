.PHONY: all clean curl_request cs end

all: clean curl-request cs end

clean: 

	rm -f puzzle.txt	
	rm -f puzzle-info.txt
	rm -r puzzle-input.txt

	@touch puzzle.txt
	@touch puzzle-info.txt
	@touch puzzle-input.txt

curl-request:
	@bash curl-request.sh

cs:
	@dotnet run

end:
	@rm puzzle-info.txt