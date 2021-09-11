class Player
  def hand
    puts "数字を入力してください。"
    puts "0:グー, 1:チョキ, 2:パー"
    player_hand = gets.chomp
    while true
      if player_hand == "0" || player_hand =="1" || player_hand =="2"
        return player_hand.to_i
      else
        puts "もう一度数字を入力してください。"
        puts "0:グー, 1:チョキ, 2:パー"
        player_hand = gets.chomp
      end
    end
  end
end
class Enemy
  def hand
      rand(3)
  end
end
class Janken
  def pon(player_hand, enemy_hand)
    janken = ["グー", "チョキ", "パー"]
    puts "相手の手は#{janken[enemy_hand]}です。"
    if player_hand == enemy_hand
      puts "あいこ"
      return true
    elsif (player_hand - enemy_hand + 3) % 3 == 2
      puts "あなたの勝ちです"
      return true
    else
      puts "あなたの負けです"
       false
    end
  end
end
class GameStart
  def self.jankenpon
    player = Player.new
    enemy = Enemy.new
    janken = Janken.new
    next_game = true
    
    while next_game
      next_game = janken.pon(player.hand, enemy.hand)
    end
  end
end
# クラス名を使ってjankenponメソッドを呼び出します。
GameStart.jankenpon
