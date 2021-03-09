def janken
    puts "最初はグー、じゃんけん・・・"
    puts "(0)グー (1)チョキ (2)パー "
    
    player_hand = gets.chomp.to_i
    program_hand = rand(3)
    
    jankens = ["グー", "チョキ","パー"]
    
    puts "あなた：#{jankens[player_hand]},\n相手：#{jankens[program_hand]}"
    puts "___________________________"
    
    if player_hand == program_hand
      puts "あいこで・・・"
      return true
      
    elsif(player_hand == 0 && program_hand == 1)||(player_hand == 1 && program_hand == 2)||(player_hand == 2 && program_hand == 0)
      puts "あっち向いて・・・ "
      puts "(0)上 (1)下 (2)左 (3)右"
      
      player_direction = gets.chomp.to_i
      program_direction = rand(3)
      
      direction = ["上","下","左","右"]
      
      puts "ホイ！"
      
      puts "あなた：#{direction[player_direction]},\n相手：#{direction[program_direction]}"
      puts "___________________________"
      
      if player_direction == program_direction
        puts "あなたの勝ち！"
      else
        puts "惜しかったね！"
      end
    
    else
      puts "あっち向いて・・・"
      puts "(0)上 (1)下 (2)左 (3)右"
      
      player_direction = gets.chomp.to_i
      program_direction = rand(4)
      
      direction = ["上","下","左","右"]
      
      puts "ホイ！"
      
      puts "あなた：#{direction[player_direction]},
            相手：#{direction[program_direction]}"
      puts "___________________________"
      
      
      if player_direction == program_direction
        puts "あなたの負けです"
      else
        puts "セーフ！！"
      end
      
    end
end

new_game = true

while new_game do
  new_game = janken
end