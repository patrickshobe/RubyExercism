class Series
  def initialize(series)
    @series = series
  end

  def build_series_array
    @series.chars
  end

  def validate_offset(offset)
    raise ArgumentError if @series.length < offset
    @offset = offset
  end

  def slices(offset)
    validate_offset(offset)
    return build_series_array if @offset <= 1
    build_slices
  end

  def build_slices
    series = build_series_array
    slices = series.map.with_index do |value, index|
      join_slice(index, series)
    end
    remove_partial_slices(slices)
  end

  def join_slice(index, series)
    series[index..(index + (@offset - 1))].join
  end

  def remove_partial_slices(series)
    series.reject do | slice |
      slice.length < @offset
    end
  end
end
