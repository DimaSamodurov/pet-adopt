# Creating API 

3 different aspects: 

- API implementation
- API validation/testing
- API documentation

## Implementation

- Rails controllers (with JBuilder or AMS) 
- Grape 
- jsonapi-resources 


## Validation/Testing

- rspec_api_documentation (RAD). It forces developer 
to describe technical API aspects at rspec level. 
Cons of RAD is that you might duplicate API definition from implementation.
Pros - no dependency on implementation (e.g. if vanila controllers are used).


## Documentation 

- apitome, or any format supported by RAD, 
- Swagger (OpenAPI), 
- APIBlueprint

- Slate is a standalone API documentation tool. 
It is useful when you need to update/publish your api 
without the need to change the source code repo.