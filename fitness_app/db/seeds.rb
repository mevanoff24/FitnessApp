require 'CSV'
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


User.create(name:"Bob")
User.create(name:"Bill")




Workout.create(title: "Size", description: "Gain Size")
Workout.create(title: "Strength", description: "Get Stronger")
Workout.create(title: "Fat Loss", description: "Keep Muscle, Lose Fat")
Workout.create(title: "Maintaince", description: "Maintain Your Current Physique")
Workout.create(title: "Size and Strength", description: "Best of Both, Size and Strength")


CSV.foreach("public/exercise_list.csv", :headers => true ) do |row|
    Exercise.create({"name_href" => row[0], "name" => row[1], "muscle_targeted_href" => row[2], "muscle_targeted" => row[3], "rating" => row[4], "image_src" => row[5], "image_href" => row[6], "image" => row[7] })
end

Category.create(name: "Workout")
Category.create(name: "Nutrition")
Category.create(name: "Motivation")
Category.create(name: "Supplemention")
Category.create(name: "Humor")



Article.create(title: "How Much Weight Should You Lift?", date: "Mar 26, 2015", author: "Bill Geiger, M.A. ", tag: "Choosing the right weight isn't random. Here's how to determine the resistance you should be using to fast-track your progress.", content: "The biggest, strongest men and women—powerlifters, Olympic lifters, Strongmen—have one thing on their minds: getting stronger. To lift heavy objects in competition means they have to likewise lift heavy objects in practice. That means, basically, lifting really, really heavy.

Focusing on strength requires doing multijoint movements like bench presses, squats, and deadlifts. Here, more than a single set of joints are working at once, such as the shoulder and elbow joints working together on a bench press. This multijoint action recruits more total muscle mass, thus allowing you to lift heavier weights.

The actual muscle fibers being recruited during very heavy sets are called fast-twitch muscle fibers; they're the ones that are more prone to growing bigger and stronger in response to resistance training as well. However, they run out of steam fairly quickly, which is why you can't lift a very heavy weight very many times.

Rest periods between sets for main lifts are fairly long (3-5 minutes) so that incomplete recovery doesn't inhibit succeeding sets. Of course, lifting heavy means warming up well beforehand, so a number of progressively heavier warm-up sets precede the maximal weights. Strength trainers also avoid taking sets to muscle failure, a technique used primarily by bodybuilders.", image: "http://www.bodybuilding.com/fun/images/2015/how-much-weight-should-you-lift-facebook.jpg", category_id: 1)

Article.create(title: "In Pursuit Of Size: The 10 Most Underrated Muscle-Building Tips", date: "Mar 27, 2015", author: "Bill Geiger", tag: "Supercharge anabolism with these key tips to turn you into a muscle-building machine.", content: "DO THE RIGHT EXERCISE FIRST IN YOUR WORKOUT
Many trainees start off their workouts with exercises they should be doing lastWhen looking for the best exercise with which to start your workout, steer toward multijoint movements. You can lift the most weight early in your workouts when your energy levels are high. They're called multijoint because several sets of joints are working, recruiting additional muscle groups. On the bench press, for example, movement is taking place at the elbows and shoulders, recruiting the triceps and front delts in addition to the pecs.

Squats, bent-over rows, overhead presses, and bench presses are the best muscle builders for the legs, back, shoulders, and chest, respectively. Each of those exercises should be the foundation exercise for its respective body-part routine. Add on other multijoint exercises from different angles to fully work a target muscle.

What are the worst exercises to start your routine with? Single-joint exercises in which you can't use much weight, like concentration curls for biceps, reverse-grip press-downs for triceps, and cable cross-overs for chest.

2 USE THE CORRECT WEIGHT 
Beginners, especially, are confused by how much weight they should put on a bar. After all, you can curl a 75-pound weight 8 times or a 35-pound bar 65 times, and they're both hard by the last few reps. So which one should you do?

The answer to this question depends on your goals. Warm-up sets aside, when your goal is to focus on strength, your heavy sets should be done for fewer than 6 reps. When your goal is building muscle, choose a weight that leads to muscle failure between 8-12 reps. And for emphasizing muscle endurance, go with a weight in which you can do more than 15 reps.

Because of the high intensity—the amount of weight you use relative to what your max is for a given exercise—the first two approaches target the fast-twitch muscle fibers the best, and these are the fibers most prone to growth.

3 OPT FOR STANDING MOVEMENTS
You may have never given much thought to the idea that some exercises can be done seated or standing. Dumbbell curls, shoulder presses, bent-over lateral raises, and even cable crossovers come quickly to mind. But if you're searching for growth, opt for standing movements. Besides requiring your core to work harder, you'll also be able to go a little heavier, do more reps with a given weight, or both. That's because when you're standing, you can more easily generate a little body English through your knees and hips. That's especially useful as you fatigue; you can push a little longer when you can introduce a slight cheating motion to help get you past a sticking point.

4 DON'T TAKE EVERY SET TO 10 REPS
While 10 reps falls into the sweet spot for hypertrophy (which is 8-12 reps), the problem here is that it's all too easy to fall into a comfort zone over time. Choose a weight, do 10 reps, and repeat, over and over. Well, do that for too long, and you're putting in lots of work but not making any significant gains. Once you can achieve 10 reps with a given weight, an alarm should ring in your head to increase the weight. This is especially true with multijoint movements. Sure, you may be able to complete only 7-8 reps with that new weight, but the idea here is to progressively overload the muscles, which doesn't happen if you're always doing sets of 10. Challenge yourself in the gym and never become too comfortable.

 
PURSUIT-RX WHEY PROTEIN
FUEL YOUR GAINS THE ALL-NATURAL WAY WITH 25 G OF PROTEIN PER SERVINGGO NOW5 VARY THE REP RANGES IN YOUR WORKOUT
There are a number of approaches to organizing your working sets on a given exercise. While we've addressed the dangers of falling into a comfort zone by always doing 3 sets of 10, there are several options you can consider, some of which are better for building muscle size and others for focusing on strength. They're typically grouped under what's called pyramid training; the pyramid is a graph that correlates weight lifted and the number of reps you can do over the course of several sets. With pyramids, you step up the weight a bit on successive sets (for fewer reps). With reverse pyramids you do the opposite; you reduce the amount of weight on each of your successive working sets.

Understanding and following the basics of pyramid training, rather than taking a random approach to your weights, can help you achieve your goals in the gym.

Sample Bench Press Pyramid
Set	Weight	Reps
1	135	15
2	185	12
3	205	10
4	225	8
5	245	6
6	265	4

6 GET A SPOT ON YOUR HEAVIEST SETS
Have you ever asked someone to spot you for a heavy set of 6 reps, only to find you could have done 8? Whether it's squatting or benching, something remarkable happens when you know there's someone watching you perform a set: You push harder. Whether it's because you know there's a watchful eye that allows you to safely bail out if need be, or you simply perform better when you know you're being watched, solo trainers can take advantage of this phenomenon by asking for a spot on the heaviest set. Of course, it goes without saying you want an experienced spotter, not someone who is shouting, Its all you as you collapse under the bar.

7 LIMIT YOUR WEIGHT WORKOUTS TO 75 MINUTES TOPS
Youve heard the discussion about quantity versus quality; this is the weight-room version of that argument. Lets say youre following the bodybuilding guidelines regarding high intensity. Youre keeping rest periods constrained, training to failure with occasional advanced intensity techniques, starting with multijoint exercises, and using high volume. Great. If youre doing all those things right, you shouldnt be able to go past 75 minutes with fuel left in the tank.

If you are pushing two-hour workouts, consider increasing the intensity of every set youre doing. A shorter, high-intensity workout will deliver better results—and get you out of the gym faster—than a low-intensity one thats just long. If you cant stimulate your biceps fibers in 30 minutes, the two-hour version isnt gonna be the fix youre looking for. In fact, its likely to do just the opposite.

8 MAKE A VERY SMALL CHANGE ON EVERY EXERCISE
Introducing large-scale changes into your training shouldnt be done all that often. But you can often make subtle adjustments in your routine by switching just one element of each exercise youre doing. Its a great way to hit a target muscle in a slightly different manner, which is especially useful if youve reached a training plateau.

Using a wide grip on a lat bar on the seated row instead of a close one works the upper lats better.
Taking a wide grip on your barbell curls rather than a shoulder-width one places more emphasis on the long head.
Doing your close-grip benches on a slightly inclined bench brings in the triceps long head a bit more and works the inner pecs just a bit higher up.
Taking a higher foot placement on the leg press shifts some of the emphasis from the quads to the glutes and hams.
If you make just one small change to each exercise in your workout on a given day, youll stimulate the target muscles in new ways and find your workout is more interesting as well.


9 DONT STOP UNTIL YOU HAVE TO
Theres a difference between doing a set to the point where its simply uncomfortable, and taking it to absolute failure. Those last few reps are the ones that cause the most microdamage to your muscle fibers. Use the same approach when finishing up your routine: push yourself until you just cant go anymore.

On your final exercise for a body part, combine a single-joint exercise with an intensity technique thatll flush your muscle. Dropsets are an easy way to fatigue the muscle; you dont just stop at failure—you immediately reduce the weight by about 25 percent and continue on to a second point of muscle failure.

At the end of your workout, when youre already highly fatigued, the name of the game is to deliver a monster muscle pump. Driving fluids into the muscle temporarily increases its size, pressing against the fascia that encapsulates the muscle. High-intensity finishers also encourage the natural release of muscle-building hormones. Theyre typically done for slightly higher reps.

Finishing your workout with such pumping sets temporarily increases pain levels—as you likely know—and feels like youve got nothing left in the tank. Thats when you know youre done with your workout.

10 TRAIN HARD, REST, AND REPEAT
In your zeal to grow, you may be inclined to train more often, thinking more is better. However, this can actually undermine your efforts, because muscle growth is only stimulated in the gym; the actual growth processes take place in the presence of good nutrition and sufficient rest.

In fact, short-changing your sleep can suppress levels of testosterone, the hormone responsible for muscle building. As for fuel, if youre eating crap, dont expect itll magically turn to muscle just because youre training hard. Consume clean, high-protein foods every day, and supplement wisely to ensure you optimize the conditions that create anabolism. Dont waste your efforts in the gym with a sloppy diet.", image: "http://www.bodybuilding.com/fun/images/2015/the-10-most-underrated-muscle-building-tips_09.jpg", category_id: 1)

