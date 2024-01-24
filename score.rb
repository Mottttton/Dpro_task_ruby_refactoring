def input_score_comment()
  puts "1から5で評価を入力してください"
  point = gets.to_i
  while true
    if point >= 1 && point <= 5
      puts "コメントを入力してください"
      comment = gets.chomp
      post = "ポイント: #{point} コメント: #{comment}"
      File.open("data.txt", "a") do |write_file|
        write_file.puts(post)
      end
      break
    else
      puts "1から5で入力してください"
      point = gets.to_i
    end
  end
end

def show_score_log()
  puts "これまでの結果"
    File.open("data.txt", "r") do |read_file|
      read_file.each_line do |line|
        puts line
      end
    end
end

while true
  puts "実施したい処理を選択してください"
  puts "1:評価ポイントとコメントを入力する"
  puts "2:今までの結果を確認する"
  puts "3:終了する"
  num = gets.to_i

  case num
  when 1
    input_score_comment()
  when 2
    show_score_log()
  when 3
    puts "終了します"
    break
  else
    puts "1から3で入力してください"
  end
end
