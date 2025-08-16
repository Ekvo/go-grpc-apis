BUILDS ?= build_user build_product build_order

build: $(BUILDS)

build_user:
	protoc \
		--go_out=. \
		--go_opt=paths=source_relative \
		--go-grpc_out=require_unimplemented_servers=false:. \
		--go-grpc_opt=paths=source_relative \
		user/v1/user.proto

build_product:
	protoc \
		--go_out=. \
		--go_opt=paths=source_relative \
		--go-grpc_out=require_unimplemented_servers=false:. \
		--go-grpc_opt=paths=source_relative \
		product/v1/product.proto

build_order:
	protoc \
		--go_out=. \
		--go_opt=paths=source_relative \
		--go-grpc_out=require_unimplemented_servers=false:. \
		--go-grpc_opt=paths=source_relative \
		order/v1/order.proto