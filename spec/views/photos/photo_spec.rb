require 'spec_helper'

describe Photo do
  it { should belong_to :album }
  it { should validate_presence_of :album_id}
  it { should validate_presence_of :caption}
  it { should validate_attachment_content_type :photo}
end
