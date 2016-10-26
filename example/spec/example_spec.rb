require 'spec_helper'
require 'rspec_api_documentation/dsl'

resource "Boss" do

  before do
    header "Content-Type", "application/json"
  end

  create_explanation =
    %{
        <p>
          <h3>Story</h3>
          <p class="list-indent">As a boss,<br/>
          I always expect a successful response</p>
        </p>
      }

  get "/boss" do


    example "Boss!", role: 'public' do

      explanation create_explanation
      do_request

      expect(status).to eq 200
    end
  end
end
