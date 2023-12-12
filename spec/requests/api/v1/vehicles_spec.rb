require 'swagger_helper'

RSpec.describe 'api/v1/vehicles', type: :request do
  path '/api/v1/vehicles' do
    get('list vehicles') do
      response(200, 'successful') do
        after do |example|
          example.metadata[:response][:content] = {
            'application/json' => {
              example: JSON.parse(response.body, symbolize_names: true)
            }
          }
        end
        run_test!
      end
    end

    post('create vehicle') do
      response(200, 'successful') do
        consumes 'application/json'
        parameter name: :vehicle, in: :body, schema: {
          type: :object,
          properties: {
            name: { type: :string },
            image: { type: :string },
            description: { type: :string },
            price: { type: :number, format: :decimal }
          },
          required: %w[name image description price]
        }
        after do |example|
          example.metadata[:response][:content] = {
            'application/json' => {
              example: JSON.parse(response.body, symbolize_names: true)
            }
          }
        end
        run_test!
      end
    end
  end

  path '/api/v1/vehicles/{id}' do
    parameter name: 'id', in: :path, type: :string, description: 'id'

    get('show vehicle') do
      response(200, 'successful') do
        let(:id) { '123' }

        after do |example|
          example.metadata[:response][:content] = {
            'application/json' => {
              example: JSON.parse(response.body, symbolize_names: true)
            }
          }
        end
        run_test!
      end
    end

    delete('delete vehicle') do
      response(200, 'successful') do
        let(:id) { '123' }

        after do |example|
          example.metadata[:response][:content] = {
            'application/json' => {
              example: JSON.parse(response.body, symbolize_names: true)
            }
          }
        end
        run_test!
      end
    end
  end
end
