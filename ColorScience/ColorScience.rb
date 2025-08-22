module OldColorScience
  class Error < StandardError; end # HeritageNoMetairo

  class Analyze
    ###############################################################################################
    #                                       Colors In Context                                     #
    ###############################################################################################
    # This enables the framework to generate new contexts for when a color might be referenced or #
    # said in conversation, such as discovering an untranslated phrase about a color in an        #
    # ancient language.                                                                           #
    ###############################################################################################
    def self.colors_in_context
      ## Choosing an random Word Class
      word_classes = [
        [["Le",  "Le"], ["Le",  "La"], ["Le",  "Les"]],
        [["La",  "Le"], ["La",  "La"], ["La",  "Les"]],
        [["Les", "Le"], ["Les", "La"], ["Les", "Les"]],
      ]

      row_options = [0, 1, 2]
      col_options = [0, 1, 2]
      arr_options = [0, 1]

      cur_row = row_options.sample
      cur_col = col_options.sample
      cur_arr = arr_options.sample

      chosen_word_class = word_classes[cur_row][cur_col][cur_arr]

      ## Choosing a random noun
      nouns = [
        [["chien",  "chien"], ["chien",  "chatte"], ["chien",  "furet"]],
        [["chatte", "chien"], ["chatte", "chatte"], ["chatte", "furet"]],
        [["furet",  "chien"], ["furet",  "chatte"], ["furet",  "furet"]],
      ]

      row_options = [0, 1, 2]
      col_options = [0, 1, 2]
      arr_options = [0, 1]

      cur_row = row_options.sample
      cur_col = col_options.sample
      cur_arr = arr_options.sample

      chosen_noun = nouns[cur_row][cur_col][cur_arr]

      ## Choosing a random adjectives
      r = "rouge"
      o = "orange"
      y = "jaune"
      g = "vert"
      b = "bleu"
      p = "violet"

      adjectives = [
        [[r, r], [r, o], [r, y], [r, g], [r, b], [r, p]],
        [[o, r], [o, o], [o, y], [o, g], [o, b], [o, p]],
        [[y, r], [y, o], [y, y], [y, g], [y, b], [y, p]],
        [[g, r], [g, o], [g, y], [g, g], [g, b], [g, p]],
        [[b, r], [b, o], [b, y], [b, g], [b, b], [b, p]],
      ]

      row_options = [0, 1, 2, 3, 4]
      col_options = [0, 1, 2, 3, 4]
      arr_options = [0, 1]

      cur_row = row_options.sample
      cur_col = col_options.sample
      cur_arr = arr_options.sample

      chosen_adjective = adjectives[cur_row][cur_col][cur_arr]

      ## Choosing a random subject
      j  = "Je"
      t  = "Tu"
      v  = "Vous"
      n1 = "Nous"
      i1 = "Il"
      i2 = "Ils"
      e1 = "Elle"
      e2 = "Elles"
      n2 = "Nousil"
      n3 = "Nousils"
      n4 = "Nouselle"
      n5 = "Nouselles"
      n6 = "Noustu"

      subjects = [
        [[j,  j], [j,  t], [j,  v], [j,  n1], [j,  i1], [j,  i2], [j,  e1], [j,  e2], [j,  n2], [j,  n3], [j,  n4], [j,  n5], [j,  n6]],
        [[t,  j], [t,  t], [t,  v], [t,  n1], [t,  i1], [t,  i2], [t,  e1], [t,  e2], [t,  n2], [t,  n3], [t,  n4], [t,  n5], [t,  n6]],
        [[v,  j], [v,  t], [v,  v], [v,  n1], [v,  i1], [v,  i2], [v,  e1], [v,  e2], [v,  n2], [v,  n3], [v,  n4], [v,  n5], [v,  n6]],
        [[n1, j], [n1, t], [n1, v], [n1, n1], [n1, i1], [n1, i2], [n1, e1], [n1, e2], [n1, n2], [n1, n3], [n1, n4], [n1, n5], [n1, n6]],
        [[i1, j], [i1, t], [i1, v], [i1, n1], [i1, i1], [i1, i2], [i1, e1], [i1, e2], [i1, n2], [i1, n3], [i1, n4], [i1, n5], [i1, n6]],
        [[i2, j], [i2, t], [i2, v], [i2, n1], [i2, i1], [i2, i2], [i2, e1], [i2, e2], [i2, n2], [i2, n3], [i2, n4], [i2, n5], [i2, n6]],
        [[e1, j], [e1, t], [e1, v], [e1, n1], [e1, e1], [e1, e2], [e1, e1], [e1, e2], [e1, n2], [e1, n3], [e1, n4], [e1, n5], [e1, n6]],
        [[e2, j], [e2, t], [e2, v], [e2, n1], [e2, e1], [e2, e2], [e2, e1], [e2, e2], [e2, n2], [e2, n3], [e2, n4], [e2, n5], [e2, n6]],
        [[n1, j], [n1, t], [n1, v], [n1, n1], [n1, i1], [n1, i2], [n1, e1], [n1, e2], [n1, n2], [n1, n3], [n1, n4], [n1, n5], [n1, n6]],
        [[n2, j], [n2, t], [n2, v], [n2, n1], [n2, i1], [n2, i2], [n2, e1], [n2, e2], [n2, n2], [n2, n3], [n2, n4], [n2, n5], [n2, n6]],
        [[n3, j], [n3, t], [n3, v], [n3, n1], [n3, i1], [n3, i2], [n3, e1], [n3, e2], [n3, n2], [n3, n3], [n3, n4], [n3, n5], [n3, n6]],
        [[n4, j], [n4, t], [n4, v], [n4, n1], [n4, i1], [n4, i2], [n4, e1], [n4, e2], [n4, n2], [n4, n3], [n4, n4], [n4, n5], [n4, n6]],
        [[n5, j], [n5, t], [n5, v], [n5, n1], [n5, i1], [n5, i2], [n5, e1], [n5, e2], [n5, n2], [n5, n3], [n5, n5], [n5, n5], [n5, n6]],
      ]

      row_options = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12]
      col_options = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12]
      arr_options = [0, 1]

      cur_row = row_options.sample
      cur_col = col_options.sample
      cur_arr = arr_options.sample

      chosen_subject = subjects[cur_row][cur_col][cur_arr]

      ## Choosing a random verb
      p = "petto"
      f = "fido"
      w = "warutzu"

      verbs = [
        [[p, p], [p, f], [p, w]],
        [[f, p], [f, f], [f, w]],
        [[w, p], [w, f], [w, w]],
      ]

      row_options = [0, 1, 2]
      col_options = [0, 1, 2]
      arr_options = [0, 1]

      cur_row = row_options.sample
      cur_col = col_options.sample
      cur_arr = arr_options.sample

      chosen_verb = verbs[cur_row][cur_col][cur_arr]

      ## Choosing a random adverb
      q = "quicely"
      s = "lentement"

      adverbs = [
        [[q, q], [q, s]],
        [[s, q], [s, s]],
      ]

      row_options = [0, 1]
      col_options = [0, 1]
      arr_options = [0, 1]

      cur_row = row_options.sample
      cur_col = col_options.sample
      cur_arr = arr_options.sample

      chosen_adverb = adverbs[cur_row][cur_col][cur_arr]

      created_phrase = "#{chosen_word_class} #{chosen_noun} #{chosen_adjective} #{chosen_subject} #{chosen_verb} #{chosen_adverb}."

      print "#{created_phrase} : "

      File.open("data/colors/new_colors.txt", "a") { |f|
        f.puts created_phrase
      }
    end

    ###############################################################################################
    #                                        Assign Color Data                                    #
    ###############################################################################################
    # This allows the system to assign identifiers, English names, hex codes, and invented lang   #
    # names for colors into a format the naive bayes and decision tree algorithm for recommending #
    # new information can use.                                                                    #
    ###############################################################################################
    def self.color_data
      color_ph = [
        [:PH4DR1, "Salmon",          "#FC746B",          "Samon"], #  0
        [:PH4DR2, "Copper",          "#D27D48",         "Cuivre"], #  1
        [:PH4DR3, "Salmon Pink",     "#F26E6E",      "Samonrose"], #  2
        [:PH5DR1, "Pale Salmon",     "#EEA38F",     "Samonblanc"], #  3
        [:PH5DR2, "Khaki",           "#B9B369",          "Khaki"], #  4
        [:PH5DR3, "Light Mauve",     "#C7A2B1",     "Mauveraito"], #  5
        [:PH6DR1, "Maize",           "#F9CF55",          "Meizu"], #  6
        [:PH6DR2, "Pale Lime",       "#B1F468",     "Remonblanc"], #  7
        [:PH6DR3, "Bland",           "#CBC4AA",        "Burando"], #  8
        [:PH7DR1, "Vibrant Green",   "#0AD322",     "Gurinvieil"], #  9
        [:PH7DR2, "Medium Green",    "#50CE6C",    "Chadeuxgris"], # 10
        [:PH7DR3, "Grey Blue",       "#84A9CA",       "Burugris"], # 11
        [:PH8DR1, "Japanese Bistre", "#65482C",  "Nihongobistre"], # 12
        [:PH8DR2, "Kelly Green",     "#0DA52B",       "Kerivert"], # 13
        [:PH8DR2, "Sapphire 1",      "#0D36A3",      "Saphirune"], # 14
        [:PH9DR1, "Dull Purple",     "#7D567A", "Gris De Violet"], # 15
        [:PH9DR2, "Viridian",        "#0B916B",       "Viridian"], # 16
        [:PH9DR3, "Sapphire 2",      "#0A47B8",     "Saphirdeux"], # 17
      ]

      ## Salmon
      @salmon_ident  = color_ph[0][0]
      @salmon_name   = color_ph[0][1]
      @salmon_hex    = color_ph[0][2]
      @salmon_invent = color_ph[0][3]

      ## Copper
      @copper_ident  = color_ph[1][0]
      @copper_name   = color_ph[1][1]
      @copper_hex    = color_ph[1][2]
      @copper_invent = color_ph[1][3]

      ## Salmon Pink
      @salmonpink_ident = color_ph[2][0]
      @salmonpink_name  = color_ph[2][1]
      @salmonink_hex    = color_ph[2][2]
      @salmonink_invent = color_ph[2][4]

      ## Pale Salmon
      @salmonpale_ident  = color_ph[3][0]
      @salmonpale_name   = color_ph[3][1]
      @salmonpale_hex    = color_ph[3][2]
      @salmonpale_invent = color_ph[3][3]

      ## Maize
      @maize_ident  = color_ph[4][0]
      @maize_name   = color_ph[4][1]
      @maize_hex    = color_ph[4][2]
      @maize_invent = color_ph[4][3]

      ## Pale Lime
      @plime_ident  = color_ph[5][0]
      @plime_name   = color_ph[5][1]
      @plime_hex    = color_ph[5][2]
      @plime_invent = color_ph[5][3]

      ## Khaki
      @khaki_ident  = color_ph[6][0]
      @khaki_name   = color_ph[6][1]
      @khaki_hex    = color_ph[6][2]
      @khaki_invent = color_ph[6][4]

      ## Light Mauve
      @lmauve_ident  = color_ph[7][0]
      @lmauve_name   = color_ph[7][1]
      @lmauve_hex    = color_ph[7][2]
      @lmauve_invent = color_ph[7][4]

      ## Bland
      @bland_ident  = color_ph[8][0]
      @bland_name   = color_ph[8][1]
      @bland_hex    = color_ph[8][2]
      @bland_invent = color_ph[8][4]

      ## Vibrant Green
      @vgreen_ident  = color_ph[9][0]
      @vgreen_name   = color_ph[9][1]
      @vgreen_hex    = color_ph[9][2]
      @vgreen_invent = color_ph[9][4]

      ## Medium Green
      @mgreen_ident  = color_ph[10][0]
      @mgreen_name   = color_ph[10][1]
      @mgreen_hex    = color_ph[10][2]
      @mgreen_invent = color_ph[10][4]

      ## Grey Blue
      @gblue_ident  = color_ph[11][0]
      @gblue_name   = color_ph[11][1]
      @gblue_hex    = color_ph[11][2]
      @gblue_invent = color_ph[11][4]

      ## Japanese Bistre
      @jbistre_ident  = color_ph[12][0]
      @jbistre_name   = color_ph[12][1]
      @jbistre_hex    = color_ph[12][2]
      @jbistre_invent = color_ph[12][4]

      ## Kelly Green
      @kgreen_ident  = color_ph[13][0]
      @kgreen_name   = color_ph[13][1]
      @kgreen_hex    = color_ph[13][2]
      @kgreen_invent = color_ph[13][4]

      ## Sapphire 1
      @saph1_ident  = color_ph[14][0]
      @saph1_name   = color_ph[14][1]
      @saph1_hex    = color_ph[14][2]
      @saph1_invent = color_ph[14][4]

      ## Dull Purple
      @dpurp_ident  = color_ph[15][0]
      @dpurp_name   = color_ph[15][1]
      @dpurp_hex    = color_ph[15][2]
      @dpurp_invent = color_ph[15][4]

      ## Viridian
      @viri_ident  = color_ph[16][0]
      @viri_name   = color_ph[16][1]
      @viri_hex    = color_ph[16][2]
      @viri_invent = color_ph[16][4]

      ## Sapphire 2
      @saph2_ident  = color_ph[17][0]
      @saph2_name   = color_ph[17][1]
      @saph2_hex    = color_ph[17][2]
      @saph2_invent = color_ph[17][4]
    end

    ###############################################################################################
    #                                        Predict Colors                                       #
    ###############################################################################################
    # Predict new color probabilities based on the assigned information provided, and convert     #
    # that into a probability that the decision tree can use.                                     #
    ###############################################################################################
    def self.predict_colors
      require "SelfModifiedDecisionTree"

      color_science = NaiveBayes.new(:identifier, :name, :hex_code, :invented_language_name, :cryptographic_hash)

      ## Identifiers
      color_science.train(:identifier,     @salmon_ident,          "Salmon")
      color_science.train(:identifier,     @copper_ident,          "Copper")
      color_science.train(:identifier, @salmonpink_ident,     "Salmon Pink")
      color_science.train(:identifier, @salmonpale_ident,     "Salmon Pale")
      color_science.train(:identifier,      @maize_ident,           "Maize")
      color_science.train(:identifier,      @plime_ident,       "Pale Lime")
      color_science.train(:identifier,      @khaki_ident,           "Khaki")
      color_science.train(:identifier,     @lmauve_ident,     "Light Mauve")
      color_science.train(:identifier,      @bland_ident,           "Bland")
      color_science.train(:identifier,     @vgreen_ident,   "Vibrant Green")
      color_science.train(:identifier,      @gblue_ident,       "Grey Blue")
      color_science.train(:identifier,    @jbistre_ident, "Japanese Bistre")
      color_science.train(:identifier,     @kgreen_ident,     "Kelly Green")
      color_science.train(:identifier,      @saph1_ident,      "Sapphire 1")
      color_science.train(:identifier,      @dpurp_ident,     "Dull Purple")
      color_science.train(:identifier,       @viri_ident,     "Dull Purple")
      color_science.train(:identifier,      @saph2_ident,      "Sapphire 2")

      ## Name
      color_science.train(:name,     @salmon_name,          "Salmon")
      color_science.train(:name,     @copper_name,          "Copper")
      color_science.train(:name, @salmonpink_name,     "Salmon Pink")
      color_science.train(:name, @salmonpale_name,     "Salmon Pale")
      color_science.train(:name,      @maize_name,           "Maize")
      color_science.train(:name,      @plime_name,       "Pale Lime")
      color_science.train(:name,      @khaki_name,           "Khaki")
      color_science.train(:name,     @lmauve_name,     "Light Mauve")
      color_science.train(:name,      @bland_name,           "Bland")
      color_science.train(:name,     @vgreen_name,   "Vibrant Green")
      color_science.train(:name,      @gblue_name,       "Grey Blue")
      color_science.train(:name,    @jbistre_name, "Japanese Bistre")
      color_science.train(:name,     @kgreen_name,     "Kelly Green")
      color_science.train(:name,      @saph1_name,      "Sapphire 1")
      color_science.train(:name,      @dpurp_name,     "Dull Purple")
      color_science.train(:name,       @viri_name,     "Dull Purple")
      color_science.train(:name,      @saph2_name,      "Sapphire 2")

      ## Hex Code
      color_science.train(:hex_code,     @salmon_hex,          "Salmon")
      color_science.train(:hex_code,     @copper_hex,          "Copper")
      color_science.train(:hex_code, @salmonpink_hex,     "Salmon Pink")
      color_science.train(:hex_code, @salmonpale_hex,     "Salmon Pale")
      color_science.train(:hex_code,      @maize_hex,           "Maize")
      color_science.train(:hex_code,      @plime_hex,       "Pale Lime")
      color_science.train(:hex_code,      @khaki_hex,           "Khaki")
      color_science.train(:hex_code,     @lmauve_hex,     "Light Mauve")
      color_science.train(:hex_code,      @bland_hex,           "Bland")
      color_science.train(:hex_code,     @vgreen_hex,   "Vibrant Green")
      color_science.train(:hex_code,      @gblue_hex,       "Grey Blue")
      color_science.train(:hex_code,    @jbistre_hex, "Japanese Bistre")
      color_science.train(:hex_code,     @kgreen_hex,     "Kelly Green")
      color_science.train(:hex_code,      @saph1_hex,      "Sapphire 1")
      color_science.train(:hex_code,      @dpurp_hex,     "Dull Purple")
      color_science.train(:hex_code,       @viri_hex,     "Dull Purple")
      color_science.train(:hex_code,      @saph2_hex,      "Sapphire 2")

      ## invent Code
      color_science.train(:invented_language_name,     @salmon_invent,          "Salmon")
      color_science.train(:invented_language_name,     @copper_invent,          "Copper")
      color_science.train(:invented_language_name, @salmonpink_invent,     "Salmon Pink")
      color_science.train(:invented_language_name, @salmonpale_invent,     "Salmon Pale")
      color_science.train(:invented_language_name,      @maize_invent,           "Maize")
      color_science.train(:invented_language_name,      @plime_invent,       "Pale Lime")
      color_science.train(:invented_language_name,      @khaki_invent,           "Khaki")
      color_science.train(:invented_language_name,     @lmauve_invent,     "Light Mauve")
      color_science.train(:invented_language_name,      @bland_invent,           "Bland")
      color_science.train(:invented_language_name,     @vgreen_invent,   "Vibrant Green")
      color_science.train(:invented_language_name,      @gblue_invent,       "Grey Blue")
      color_science.train(:invented_language_name,    @jbistre_invent, "Japanese Bistre")
      color_science.train(:invented_language_name,     @kgreen_invent,     "Kelly Green")
      color_science.train(:invented_language_name,      @saph1_invent,      "Sapphire 1")
      color_science.train(:invented_language_name,      @dpurp_invent,     "Dull Purple")
      color_science.train(:invented_language_name,       @viri_invent,     "Dull Purple")
      color_science.train(:invented_language_name,      @saph2_invent,      "Sapphire 2")

      ## Recognize Unusual Hashes
      color_science.train(:cryptographic_hash, '18b07b3750e769ac646902d4ab9b8da4', "cryptographic hash")
      color_science.train(:cryptographic_hash, '37c854f0133347f815ea4a694f2d04bd', "cryptographic hash")
      color_science.train(:cryptographic_hash, '40b089a385a3862b118fd38a743e967c', "cryptographic hash")

      new_colors = File.readlines("data/colors/new_colors.txt")
      size_limit = new_colors.size.to_i
      index      = 0

      size_limit.times do
        ColorScience::Analyze.colors_in_context

        classification = color_science.classify(*new_colors[index])

        ## Classification Datapoints
        @label           = classification[0] # .tr " ", ""
        @probability_no  = classification[1]
        @probability_yes = 1 - @probability_no

        random_color_probability = [0.058823529, 0.470588236, 0.977941177].sample

        @new_calculation = @probability_no + random_color_probability / 2

        print "Is '#{new_colors[index].strip}' #{@label}? #{@probability_yes} / #{@probability_no} "

        ColorScience::Analyze.suggest_next_color

        #@new_calculation = @new_calculation + @probability_no
      end
    end

    ###############################################################################################
    #                                     Suggest New Color                                       #
    ###############################################################################################
    # Suggest a new color to the player that can go into their color palette, rather than         #
    # chasing a random color name or hex code at random.                                          #
    ###############################################################################################
    def self.suggest_next_color
      require "SelfModifiedDecisionTree"
      require "Maisettelingua"
#      require "digest"

      attributes =    ["Identifier"],
                            ["Name"],
                        ["Hex Code"],
                   ["Invented Name"]

      training = [
        [0.058823529, "PH4DR1"], [0.088235296, "PH4DR2"], [0.147058825, "PH4DR3"], 
        [0.205882354, "PH5DR1"], [0.264705883, "PH5DR2"], [0.323529412, "PH5DR3"],
        [0.397058824, "PH6DR1"], [0.470588236, "PH6DR2"], [0.529411765, "PH6DR3"],
        [0.764705883, "PH7DR1"], [0.794117648, "PH7DR2"], [0.823529412, "PH7DR3"], 
        [0.852941177, "PH8DR1"], [0.882352941, "PH8DR2"], [0.897058824, "PH8DR2"], 
        [0.911764706, "PH9DR1"], [0.955882353, "PH9DR2"], [0.977941177, "PH9DR3"],
      ], [
        [0.058823529,          "Salmon"], [0.088235296,       "Copper"], [0.147058825, "Salmon Pink"],
        [0.205882354,     "Pale Salmon"], [0.264705883,        "Khaki"], [0.323529412, "Light Mauve"],
        [0.397058824,           "Maize"], [0.470588236,    "Pale Lime"], [0.529411765,       "Bland"],
        [0.764705883,   "Vibrant Green"], [0.794117648, "Medium Green"], [0.823529412,   "Grey Blue"],
        [0.852941177, "Japanese Bistre"], [0.882352941,  "Kelly Green"], [0.897058824,  "Sapphire 1"],
        [0.911764706,     "Dull Purple"], [0.955882353,      "Viidian"], [0.977941177,  "Sapphire 2"],
      ], [
        [0.058823529, "#FC746B"], [0.088235296, "#D27D48"], [0.147058825, "#F26E6E"], 
        [0.205882354, "#EEA38F"], [0.264705883, "#B9B369"], [0.323529412, "#C7A2B1"], 
        [0.397058824, "#F9CF55"], [0.470588236, "#B1F468"], [0.529411765, "#CBC4AA"], 
        [0.764705883, "#0AD322"], [0.794117648, "#50CE6C"], [0.823529412, "#84A9CA"], 
        [0.852941177, "#65482C"], [0.882352941, "#0DA52B"], [0.897058824, "#0D36A3"], 
        [0.911764706, "#7D567A"], [0.955882353, "#0B916B"], [0.977941177, "#0A47B8"],
      ], [
        [0.058823529,          "Samon"], [0.088235296,      "Cuivre"], [0.147058825,  "Samonrose"],
        [0.205882354,     "Samonblanc"], [0.264705883,       "Khaki"], [0.323529412, "Mauveraito"], 
        [0.397058824,          "Meizu"], [0.470588236,  "Remonblanc"], [0.529411765,    "Burando"], 
        [0.764705883,     "Gurinviell"], [0.794117648, "Chadeuxgris"], [0.823529412,   "Burugris"], 
        [0.852941177,  "Nihongobistre"], [0.882352941,    "Kerivert"], [0.897058824,  "Saphirune"], 
        [0.911764706, "Gris De Violet"], [0.955882353,    "Viridian"], [0.977941177, "Saphirdeux"],
      ]

      dec_tree = DecisionTree::ID3Tree.new(attributes[0], training[0], 1, :continuous),
                 DecisionTree::ID3Tree.new(attributes[1], training[1], 1, :continuous),
                 DecisionTree::ID3Tree.new(attributes[2], training[2], 1, :continuous),
                 DecisionTree::ID3Tree.new(attributes[3], training[3], 1, :continuous),
                 DecisionTree::ID3Tree.new(attributes[4], training[4], 1, :continuous)

      current_dectree1 = dec_tree[0]
      current_dectree1.train

      current_dectree2 = dec_tree[1]
      current_dectree2.train

      current_dectree3 = dec_tree[2]
      current_dectree3.train

      current_dectree4 = dec_tree[3]
      current_dectree4.train

      identifier  = [@new_calculation,     "PH6DR2"]
      name        = [@new_calculation,  "Pale Lime"]
      hex_code    = [@new_calculation,    "#B1F468"]
      invent_name = [@new_calculation, "Remonblanc"]

      decision1 = current_dectree1.predict(identifier)
      decision2 = current_dectree2.predict(name)
      decision3 = current_dectree3.predict(hex_code)
      decision4 = current_dectree4.predict(invent_name)


      #sha256      = Digest::SHA256.new
      new_mixture = sha256.update "['#{decision1}', '#{decision2}', '#{decision3}', '#{decision4}']"

      puts " > ['#{decision1}', '#{decision2}', '#{decision3}', '#{decision4}'] #{new_mixture}"
      
      ouvert("identifier/identifiers.txt",               "#{@decision1}",
             "names/names.txt",            "#{@decision2} #{@decision4}",
             "hex_codes.txt",                            "#{@decision3}")
    end
    
    ###############################################################################################
    #                                   Chat With Color Scientist                                 #
    ###############################################################################################
    # Using AIML to chat with the color scientist by making color requests in natural language,   #
    # by having them translate documents in the invented language.                                #
    ###############################################################################################
    def self.chat_color_science
      require "programr"
    end
  end
end
