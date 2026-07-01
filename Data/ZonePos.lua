-- Vanilla zone world-position table (continent -> zone -> width/height/xOffset/yOffset),
-- extracted verbatim from Astrolabe (LGPL, bundled with Questie). Used by Guided for the
-- cross-zone direction arrow. Zone keys are map-file names (no spaces, e.g. DunMorogh).
Guided_ZonePos = {
        -- World Map of Azeroth
        [0] = {
            parentContinent = 0,
            height = 29687.90575403711, -- as in Questie
            width = 44531.82907938571, -- as in Questie
        },
        -- Kalimdor
        [1] = {
            parentContinent = 0,
            height = 24533.2001953125,
            width = 36799.810546875,
            xOffset = -8310.0, -- as in Questie
            yOffset = 1815.0, -- as in Questie
            zoneData = {
                Ashenvale = {
                    height = 3843.749877929687,
                    width = 5766.66638183594,
                    xOffset = 15366.59973144531,
                    yOffset = 8126.98388671875,
                },
                Aszhara = {
                    height = 3381.2498779296902,
                    width = 5070.8327636718695,
                    xOffset = 20343.68286132813,
                    yOffset = 7458.23388671875,
                },
                Barrens = {
                    height = 6756.24987792969,
                    width = 10133.3330078125,
                    xOffset = 14443.68310546875,
                    yOffset = 11187.40051269531,
                },
                Darkshore = {
                    height = 4366.66650390625,
                    width = 6549.9997558593805,
                    xOffset = 14124.93310546875,
                    yOffset = 4466.5673828125,
                },
                Darnassis = {
                    height = 705.7294921875,
                    width = 1058.33325195312,
                    xOffset = 14128.23681640625,
                    yOffset = 2561.583984375,
                },
                Desolace = {
                    height = 2997.916564941411,
                    width = 4495.8330078125,
                    xOffset = 12833.2666015625,
                    yOffset = 12347.817077636719,
                },
                Durotar = {
                    height = 3524.9998779296902,
                    width = 5287.49963378906,
                    xOffset = 19029.09948730469,
                    yOffset = 10991.56713867187,
                },
                Dustwallow = {
                    height = 3499.99975585937,
                    width = 5250.000061035156,
                    xOffset = 18041.599548339844,
                    yOffset = 14833.23364257813,
                },
                Felwood = {
                    height = 3833.33325195312,
                    width = 5749.99963378906,
                    xOffset = 15424.93298339844,
                    yOffset = 5666.5673828125,
                },
                Feralas = {
                    height = 4633.3330078125,
                    width = 6949.9997558593805,
                    xOffset = 11624.93310546875,
                    yOffset = 15166.56689453125,
                },
                Moonglade = {
                    height = 1539.5830078125,
                    width = 2308.33325195313,
                    xOffset = 18447.849609375,
                    yOffset = 4308.234375,
                },
                Mulgore = {
                    height = 3424.999847412109,
                    width = 5137.49987792969,
                    xOffset = 15018.68298339844,
                    yOffset = 13072.81704711914,
                },
                Ogrimmar = {
                    height = 935.41662597657,
                    width = 1402.6044921875,
                    xOffset = 20747.20068359375,
                    yOffset = 10526.02319335937,
                },
                Silithus = {
                    height = 2322.916015625,
                    width = 3483.333984375,
                    xOffset = 14529.099609375,
                    yOffset = 18758.234375,
                },
                StonetalonMountains = {
                    height = 3256.2498168945312,
                    width = 4883.33312988282,
                    xOffset = 13820.76635742187,
                    yOffset = 9883.23388671875,
                },
                Tanaris = {
                    height = 4600.0,
                    width = 6899.999526977539,
                    xOffset = 17285.34959411621,
                    yOffset = 18674.900390625,
                },
                Teldrassil = {
                    height = 3393.75,
                    width = 5091.66650390626,
                    xOffset = 13252.01635742187,
                    yOffset = 968.650390625,
                },
                ThousandNeedles = {
                    height = 2933.3330078125,
                    width = 4399.999694824219,
                    xOffset = 17499.93292236328,
                    yOffset = 16766.56689453125,
                },
                ThunderBluff = {
                    height = 695.833312988286,
                    width = 1043.749938964844,
                    xOffset = 16549.932983398438,
                    yOffset = 13649.900329589844,
                },
                UngoroCrater = {
                    height = 2466.66650390625,
                    width = 3699.9998168945312,
                    xOffset = 16533.26629638672,
                    yOffset = 18766.56689453125,
                },
                Winterspring = {
                    height = 4733.3332519531195,
                    width = 7099.999847412109,
                    xOffset = 17383.26626586914,
                    yOffset = 4266.5673828125,
                },
            },
        },
        -- Eastern Kingdoms
        [2] = {
            parentContinent = 0,
            height = 23466.60009765625,
            width = 35199.900390625,
            xOffset = 16625.0, -- guessed
            yOffset = 2470.0, -- guessed
            zoneData = {
                Alterac = {
                    height = 1866.666656494141,
                    width = 2799.999938964841,
                    xOffset = 15216.666687011719,
                    yOffset = 5966.60009765625,
                },
                Arathi = {
                    height = 2399.99992370606,
                    width = 3599.999877929687,
                    xOffset = 16866.666625976562,
                    yOffset = 7599.93342590332,
                },
                Badlands = {
                    height = 1658.33349609375,
                    width = 2487.5,
                    xOffset = 18079.16650390625,
                    yOffset = 13356.18310546875,
                },
                BlastedLands = {
                    height = 2233.333984375,
                    width = 3349.9998779296902,
                    xOffset = 17241.66662597656,
                    yOffset = 18033.26611328125,
                },
                BurningSteppes = {
                    height = 1952.08349609375,
                    width = 2929.166595458989,
                    xOffset = 16266.66665649414,
                    yOffset = 14497.849609375,
                },
                DeadwindPass = {
                    height = 1666.6669921875,
                    width = 2499.999938964849,
                    xOffset = 16833.33331298828,
                    yOffset = 17333.26611328125,
                },
                DunMorogh = {
                    height = 3283.33325195312,
                    width = 4924.9997558593805,
                    xOffset = 14197.91674804687,
                    yOffset = 11343.68334960938,
                },
                Duskwood = {
                    height = 1800.0,
                    width = 2699.999938964841,
                    xOffset = 15166.666687011719,
                    yOffset = 17183.26611328125,
                },
                EasternPlaguelands = {
                    height = 2581.24975585938,
                    width = 3870.83349609375,
                    xOffset = 18185.41650390625,
                    yOffset = 3666.60034179687,
                },
                Elwynn = {
                    height = 2314.5830078125,
                    width = 3470.83325195312,
                    xOffset = 14464.58337402344,
                    yOffset = 15406.18310546875,
                },
                Hilsbrad = {
                    height = 2133.33325195313,
                    width = 3199.9998779296902,
                    xOffset = 14933.33337402344,
                    yOffset = 7066.60009765625,
                },
                Hinterlands = {
                    height = 2566.6666259765598,
                    width = 3850.0,
                    xOffset = 17575.0,
                    yOffset = 5999.93347167969,
                },
                Ironforge = {
                    height = 527.6044921875,
                    width = 790.625061035154,
                    xOffset = 16713.591369628906,
                    yOffset = 12035.84130859375,
                },
                LochModan = {
                    height = 1839.5830078125,
                    width = 2758.3331298828098,
                    xOffset = 17993.74987792969,
                    yOffset = 11954.10009765625,
                },
                Redridge = {
                    height = 1447.916015625,
                    width = 2170.83325195312,
                    xOffset = 17570.83325195313,
                    yOffset = 16041.60009765625,
                },
                SearingGorge = {
                    height = 1487.49951171875,
                    width = 2231.249847412109,
                    xOffset = 16322.91665649414,
                    yOffset = 13566.60009765625,
                },
                Silverpine = {
                    height = 2799.9998779296902,
                    width = 4199.9997558593805,
                    xOffset = 12550.00024414062,
                    yOffset = 5799.93347167969,
                },
                Stormwind = {
                    height = 896.3544921875,
                    width = 1344.2708053588917,
                    xOffset = 14619.02856445312,
                    yOffset = 15745.45068359375,
                },
                Stranglethorn = {
                    height = 4254.166015625,
                    width = 6381.2497558593805,
                    xOffset = 13779.16674804687,
                    yOffset = 18635.35009765625,
                },
                SwampOfSorrows = {
                    height = 1529.1669921875,
                    width = 2293.75,
                    xOffset = 18222.91650390625,
                    yOffset = 17087.43310546875,
                },
                Tirisfal = {
                    height = 3012.499816894536,
                    width = 4518.74987792969,
                    xOffset = 12966.66674804687,
                    yOffset = 3629.10034179687,
                },
                Undercity = {
                    height = 640.10412597656,
                    width = 959.3750305175781,
                    xOffset = 15126.807373046875,
                    yOffset = 5588.65478515625,
                },
                WesternPlaguelands = {
                    height = 2866.666534423828,
                    width = 4299.999908447271,
                    xOffset = 15583.33334350586,
                    yOffset = 4099.93359375,
                },
                Westfall = {
                    height = 2333.3330078125,
                    width = 3499.9998168945312,
                    xOffset = 12983.33349609375,
                    yOffset = 16866.60009765625,
                },
                Wetlands = {
                    height = 2756.25,
                    width = 4135.416687011719,
                    xOffset = 16389.58331298828,
                    yOffset = 9614.5166015625,
                },
            },
        },
    }
