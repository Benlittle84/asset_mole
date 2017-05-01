require 'rails_helper'

describe ApplicationHelper, type: :helper do
  subject { Object.new.extend(described_class) }
end
