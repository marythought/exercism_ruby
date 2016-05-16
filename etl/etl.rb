class ETL
  def self.transform(old)
    new = {}
    old.each do |key, values|
      values.each do |letter|
        new[letter.downcase] = key
      end
    end
    new
  end
end
