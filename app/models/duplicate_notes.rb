module DuplicateNotes

  def users_duplicate_notes
    duplicates = []
      notes.each do |note|
      duplicates << note.message.upcase.gsub(/\W/, ' ').split(' ')
    end
    each_word =  duplicates.flatten
    each_word.group_by{ |e| e }.select { |k, v| v.size > 1 }.map(&:first).join(' ')
  end

  # common misses that are being searched from the users notes and displayed back to them.

  def pulled
    matches = users_duplicate_notes.match(/PULLED/)
    p matches
  end

  def slice
    slices = users_duplicate_notes.match(/SLICE/)
    p slices
  end

  def hook
    hooks = users_duplicate_notes.match(/HOOK/)
    p hooks
  end

  def shank
    shanks = users_duplicate_notes.match(/SHANK/)
    p shanks
  end

  def top
    tops = users_duplicate_notes.match(/TOP/)
    p tops
  end

  def left
    left = users_duplicate_notes.match(/LEFT/)
    p left
  end

  def right
    right = users_duplicate_notes.match(/RIGHT/)
    p right
  end

  def three
    three = users_duplicate_notes.match(/3/)
    p three
  end

  def putts
    putts = users_duplicate_notes.match(/PUTTS/)
    p putts
  end

  def putt
    putt = users_duplicate_notes.match(/PUTT/)
    p putt
  end

  def short
    short = users_duplicate_notes.match(/SHORT/)
    p short
  end

  def long
    long = users_duplicate_notes.match(/LONG/)
    p long
  end

end
