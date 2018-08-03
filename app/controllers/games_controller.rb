class GamesController < ApplicationController
  def index
    cells = []
    arr = []
    words = ["player", "sister", "law", "tradition", "china", "category", "andes", "apartment", "recipe", "exam", "basket", "sample", "attitude", "thought", "politics", "computer", "chest", "device", "member", "secretary", "success", "assistant", "editor", "debt", "equipment", "boyfriend", "candidate", "himalayas", "failure", "office", "charity", "wedding", "setting", "apple", "hospital", "bird", "breath", "news", "variation", "reception", "clothes", "love", "potato", "moment", "sir", "criticism", "media", "road", "extent", "procedure", "property", "world", "signature", "newspaper", "beer", "drawer", "Europe", "judgment", "instance", "recording", "problem", "son", "pizza", "historian", "hall", "painting", "city", "artic", "method", "message", "surgery", "version", "entry", "lake", "accident", "lab", "sector", "ambition", "ladder", "Paris", "context", "town", "series", "wife", "community", "country", "estate", "truth", "solution", "length", "wood", "grocery", "steak", "inflation", "police", "system", "africa", "republic", "writing", "language", "drama", "king", "complaint", "fortune", "variety", "penalty", "hat", "heart", "month", "presence", "art", "gate", "director", "manager", "internet", "chocolate", "contract", "blood", "phone", "wealth", "ratio", "insect", "employer", "argument", "coffee", "history", "mode", "chemistry", "birthday", "activity", "freedom", "session", "mixture", "location", "nation", "baseball", "goal", "analysis", "quality", "disaster", "america", "girl", "affair", "concept", "delivery", "trainer", "poet", "midnight", "rocky", "hotel", "highway", "tennis", "agency", "writer", "tension", "army", "student", "hair", "beijing", "dirt", "selection", "customer", "analyst", "studio", "operation", "menu", "village", "weakness", "bathroom", "warning", "cheek", "medicine", "food", "society", "airport", "advice", "driver", "cold", "hot", "teacher", "uncle", "client", "family", "farmer", "policy", "year", "homework", "stranger", "person", "church", "article", "relation", "magazine", "two", "agreement", "mall", "knowledge", "night", "bedroom", "control", "vehicle", "emotion", "garbage", "appalachian", "nature", "music", "proposal", "reaction", "education", "industry", "quantity", "mom", "thanks", "meal", "classroom", "salad", "childhood", "feedback", "throat", "reality", "bonus", "president", "fact", "economics", "tooth", "teaching", "physics", "owner", "patience", "height", "people", "tokyo", "user", "loss", "confusion", "queen", "depth", "video", "outcome", "county", "opinion", "intention", "math", "moscow", "engine", "week", "event", "effort", "thing", "power", "death", "desk", "arrival", "drawing", "tongue", "funeral", "humor", "pear", "form", "eyes", "thread", "word", "muscle", "holiday", "vegetable", "bait", "boat", "arm", "roll", "account", "peace", "surprise", "crayon", "wrench", "amusement", "hall", "alarm", "locket", "amount", "sea", "fog", "expert", "advice", "guide", "push", "basketball", "bell", "mint", "statement", "sweater", "tendency", "zipper", "existence", "chin", "purpose", "insect", "debt", "caption", "invention", "plate", "twig", "ball", "yard", "bird", "sofa", "stove", "ring", "floor", "sugar", "measure", "growth", "aftermath", "attack", "rate", "leather", "offer", "level", "top", "waves", "chance", "tax", "science", "vein", "branch", "girls", "tramp", "kick", "tray", "need", "anger", "blade", "friction", "harmony", "seashore", "care", "sort", "experience", "ray", "snail", "crowd", "airport", "touch", "jeans", "note", "approval", "angle", "sand", "hammer", "spark", "heat", "thunder", "watch", "question", "guitar", "size", "pet", "reward", "aunt", "protest", "lettuce", "cherry", "table", "hospital", "plane", "doll", "shade", "jail", "arithmetic", "zinc", "mailbox", "pancake", "language", "rule", "design", "hydrant", "show", "plastic", "teeth", "hands", "edge", "machine", "actor", "stomach", "fall", "noise", "cave", "representative", "eggs", "tooth", "coat", "writing", "burst", "flag", "wood", "quicksand", "fly", "paper", "eye", "condition", "day", "notebook", "development", "soup", "receipt", "coast", "bubble", "acoustics", "cushion", "badge", "picture", "marble", "wave", "birth", "sidewalk", "dinner", "argument", "sister", "discussion", "drop", "rose", "bikes", "mother", "addition", "summer", "dock", "cobweb", "rail", "yarn", "snakes", "believe", "roof", "hobbies", "credit", "giraffe", "seat", "transport", "pig", "haircut", "rub", "library", "society", "bike", "company", "group", "walk", "activity", "shoe", "neck", "birds", "quilt", "nut", "visitor", "punishment", "copper", "record", "friend", "engine", "afternoon", "car", "jellyfish", "spoon", "magic", "trousers", "yak", "point", "mice", "wound", "collar", "cause", "current", "page", "town", "channel", "value", "hose", "hot", "cracker", "wealth", "cart", "loss", "lunch", "quiet", "low", "slip", "coal", "poison", "expansion", "turkey", "root", "shirt", "elbow", "plantation", "wax", "pocket", "wine", "sail", "throne", "knee", "gun", "fear", "cabbage", "route", "geese", "space", "bulb", "sink", "jar", "line", "butter", "connection", "thrill", "oatmeal", "quarter", "crow", "dolls", "friends", "mist", "church", "cow", "trucks", "part", "corn", "match", "toys", "dinosaurs", "beginner", "ground", "prose", "pot", "control", "tongue", "cream", "rain", "land", "drawer", "women", "fowl", "desk", "price", "rock", "box", "bridge", "verse", "treatment", "quince", "hour", "wire", "bead", "pull", "songs", "force", "quiver", "unit", "rings", "desire", "truck", "beef", "snake", "sleet", "horses", "payment", "string", "pest", "drink", "partner", "theory", "cows", "babies", "north", "position", "sound", "sleep", "rest", "pipe", "scissors", "toes", "scent", "sky", "rabbits", "leg", "sticks", "loaf", "exchange", "drain", "chess", "clover", "things", "cannon", "cable", "reason", "instrument", "rifle", "month", "girl", "lumber", "zoo", "fork", "crack", "wilderness", "health", "sack", "pigs", "berry", "kitty", "cactus", "observation", "stem", "crime", "bite", "lace", "jelly", "toe", "voyage", "fish", "place", "potato", "grain", "toothbrush", "apparel", "gold", "dust", "degree", "pickle", "air", "chalk", "impulse", "kiss", "wing", "skate", "thought", "night", "bed", "cats", "whistle", "playground", "finger", "houses", "harbor", "title", "legs", "laugh", "lake", "view", "letter", "weather", "liquid", "needle", "bottle", "texture", "letters", "ticket", "button", "ship", "sneeze", "umbrella", "fruit", "lamp", "end", "pleasure", "dad", "waste", "quill", "room", "sun", "steel", "sock", "destruction", "flowers", "rhythm", "son", "respect", "doctor", "crib", "bag", "turn", "detail", "stone", "income", "governor", "mouth", "clam", "sheep", "shape", "hope", "judge", "pie", "trains", "distribution", "afterthought", "beds", "example", "queen", "selection", "division", "start", "ducks", "grape", "rice", "property", "tree", "battle", "run", "underwear", "cat", "board", "foot", "discovery", "food", "government", "skirt", "memory", "basket", "kettle", "plant", "cup", "trees", "cook", "bells", "authority", "earthquake", "frogs", "carpenter", "dirt", "effect", "van", "boundary", "side", "swim", "ghost", "children", "knot", "hate", "frame", "grade", "war", "tiger", "curve", "voice", "smile", "decision", "back", "bomb", "lunchroom", "fuel", "duck", "increase", "shame", "driving", "time", "linen", "robin", "teaching", "worm", "passenger", "gate", "blow", "name", "mask", "stop", "step", "thing", "mass", "motion", "slave", "fold", "dog", "baseball", "industry", "milk", "lock", "shock", "cast", "knife", "hand", "wren", "interest", "house", "downtown", "laborer", "zebra", "door", "wall", "army", "animal", "stew", "hill", "deer", "trip", "twist", "bath", "calculator", "parcel", "creator", "brass", "glove", "frog", "whip", "mountain", "smell", "shop", "stitch", "volleyball", "creature", "tail", "books", "wrist", "man", "rabbit", "tank", "scarf", "glass", "airplane", "chickens", "ink", "event", "structure", "cloth", "trade", "nest", "fang", "grandfather", "knowledge", "veil", "nation", "fact", "money", "cherries", "wash", "toothpaste", "limit", "work", "club", "join", "sponge", "meal", "minister", "salt", "icicle", "smash", "spring", "juice", "pump", "flower", "art", "range", "cars", "celery", "key", "oven", "chicken", "order", "mark", "toad", "suggestion", "crook", "plants", "front", "maid", "rat", "field", "card", "bat", "finger", "brick", "window", "spade", "flesh", "square", "school", "regret", "store", "base", "pies", "scene", "moon", "mine", "apparatus", "cheese", "distance", "balance", "canvas", "cakes", "seed", "screw", "flavor", "produce", "test", "agreement", "zephyr", "face", "fire", "spiders", "behavior", "flame", "crown", "story", "hole", "cent", "mind", "oranges", "temper", "book", "lip", "mitten", "snow", "coil", "flight", "secretary", "curtain", "vest", "love", "brake", "daughter", "sign", "iron", "team", "way", "party", "breath", "farm", "woman", "digestion", "island", "jewel", "tub", "smoke", "talk", "shoes", "minute", "station", "committee", "nerve", "spot", "flock", "adjustment", "cap", "competition", "attraction", "mom", "ladybug", "hair", "earth", "bucket", "boy", "crate", "act", "pollution", "sisters", "death", "class", "porter", "coach", "eggnog", "volcano", "business", "dime", "bit", "cattle", "men", "birthday", "throat", "sense", "appliance", "bone", "street", "comparison", "grandmother", "scale", "belief", "cover", "reading", "fairies", "squirrel", "wheel", "fireman", "sheet", "cub", "market", "baby", "shake", "stretch", "uncle", "arch", "bushes", "vessel", "calendar", "self", "water", "monkey", "tomatoes", "grip", "jump", "swing", "can", "river", "furniture", "person", "tent", "office", "ants", "morning", "jam", "powder", "straw", "meeting", "education", "dogs", "number", "circle", "relation", "road", "year", "yam", "head", "hat", "oil", "request", "popcorn", "brother", "trail", "kittens", "plot", "shelf", "stream", "servant", "honey", "action", "rake", "system", "tin", "bee", "reaction", "direction", "rainstorm", "play", "wish", "pan", "camp", "dress", "ocean", "skin", "vacation", "yoke", "wool", "feeling", "weight", "pin", "country", "use", "railway", "basin", "support", "ice", "plough", "scarecrow", "idea", "nose", "territory", "riddle", "soap", "wind", "stranger", "building", "stocking", "camera", "profit", "donkey", "song", "week", "recess", "spy", "bedroom", "trick", "pen", "silk", "toy", "trouble", "pizzas", "religion", "stick", "soda", "pencil", "pail", "color", "achiever", "thumb", "horse", "snails", "ear", "bear", "hook", "border", "rod", "orange", "writer", "taste", "slope", "carriage", "planes", "error", "cellar", "horn", "history", "stage", "vase", "middle", "silver", "metal", "quartz", "cake", "stamp", "suit", "grass", "insurance", "winter", "move", "meat", "train", "giants", "look", "pets", "steam", "star", "change", "boot", "egg", "cough", "substance", "power", "cemetery", "home", "blood"]
    loop do
      if arr.count(2) < 9 && arr.count(1) < 9 && arr.length < 25
        arr.push(rand(3))
      elsif arr.count(2) == 9 && arr.count(1) < 9 && arr.length < 25
        r = rand(2)
        if r == 2
          r += 1
        end
        arr.push(r)
      elsif arr.count(2) < 9 && arr.count(1) == 9 && arr.length < 25
        arr.push(rand(2))
      elsif arr.count(2) == 9 && arr.count(1) == 9 && arr.length < 25
          arr.push(0)
      elsif arr.length == 25 && arr.count(2) < 9 && arr.count(1) < 9
        selector = arr.each_index.select{|i| arr[i] == 0}
        r = rand(selector.length)-1
        arr.delete_at(selector[r])
        arr.insert(selector[r],rand(2)+1)
      elsif arr.length == 25 && arr.count(2) == 9 && arr.count(1) < 9
        selector = arr.each_index.select{|i| arr[i] == 0}
        r = rand(selector.length)-1
        arr.delete_at(selector[r])
        arr.insert(selector[r],1)
      elsif arr.length == 25 && arr.count(2) < 9 && arr.count(1) == 9
        selector = arr.each_index.select{|i| arr[i] == 0}
        r = rand(selector.length)-1
        arr.delete_at(selector[r])
        arr.insert(selector[r],2)
      elsif arr.count(2) > 9
        selector = arr.each_index.select{|i| arr[i] == 2}
        r = rand(selector.length)-1
        arr.delete_at(selector[r])
        arr.insert(selector[r],0)
      elsif arr.count(1) > 9
        selector = arr.each_index.select{|i| arr[i] == 1}
        r = rand(selector.length)-1
        arr.delete_at(selector[r])
        arr.insert(selector[r],0)
      elsif arr.length == 25 && arr.count(2) == 9 && arr.count(1) == 9
        break
      else
        break
      end
    end
    puts arr
    puts "------------"
    # Add death word
    x = rand(2)+1
    selector = arr.each_index.select{|i| arr[i] == x}
    r = rand(selector.length-1)
    arr.delete_at(selector[r])
    arr.insert(selector[r],"death-word")
    arr.map! { |x| x == 0 ? "neutral-word" : x }
    arr.map! { |x| x == 1 ? "red-word" : x }
    arr.map! { |x| x == 2 ? "blue-word" : x }
    puts arr
    puts "------------"
    # choose words for cells
    loop do
      loop do
        random_word = words.sample
        if cells.length > 25
          cells.delete_at(cells.length - 1)
        elsif cells.length < 25
          if random_word.length > 10
            random_word = words.sample
          else
            cells.push(random_word)
          end
        else
          break
        end
      end
      if cells == cells.uniq
        break
      else
        cells = cells.uniq
      end
    end

    puts cells
    @cells = cells
    @arr = arr

    end
end
