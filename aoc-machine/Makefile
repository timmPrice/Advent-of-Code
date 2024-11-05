.PHONY: all clean curl_request cs end

all: clean curl-request cs end

clean: 

	@if [ -f "./puzzle.txt" ]; then rm ./puzzle.txt; fi
	@if [ -f "./puzzle-info.txt" ]; then rm ./puzzle-info.txt; fi
	@if [ -f "./puzzle-input.txt" ]; then rm ./puzzle-input.txt; fi

	@touch puzzle.txt
	@touch puzzle-info.txt
	@touch puzzle-input.txt

curl-request:
	@bash curl-request.sh

cs:
	@dotnet run

end:
	@rm puzzle-info.txt