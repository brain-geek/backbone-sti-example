shared_examples "winning" do
  #Availability period
  it { should validate_presence_of :date_start }
  it { should validate_presence_of :date_end }

  #Available hours
  it { should validate_presence_of :availible_hours_start }
  it { should validate_presence_of :availible_hours_end }

  it { should validate_numericality_of :availible_hours_start }
  it { should validate_numericality_of :availible_hours_end }

  it { should ensure_inclusion_of(:availible_hours_start).in_range(0..24) }
  it { should ensure_inclusion_of(:availible_hours_end).in_range(0..24) }

  let(:subject_class) { subject.class }
  let(:subject_fabricate_name) { subject_class.to_s.underscore }

  describe "weekdays" do
    it "should be valid only when at least one week day selected" do
      attrs = Fabricate.attributes_for subject_fabricate_name

      subject_class.new(attrs).should be_valid

      attrs.delete(:availibility_weekday_mon)

      subject_class.new(attrs).should be_invalid

      [
        :availibility_weekday_fri, :availibility_weekday_mon, :availibility_weekday_sat, :availibility_weekday_sun, :availibility_weekday_thu, :availibility_weekday_tue, :availibility_weekday_wed
      ].each do |day|
        new_attrs = attrs.dup
        new_attrs[day] = true
        subject_class.new(new_attrs).should be_valid
      end
    end
  end
end