-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 12, 2020 at 07:37 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.2.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `anp_case3`
--

-- --------------------------------------------------------

--
-- Table structure for table `app_config`
--

CREATE TABLE `app_config` (
  `key` varchar(15) NOT NULL,
  `value` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `app_config`
--

INSERT INTO `app_config` (`key`, `value`, `created_at`) VALUES
('initialized', 1, '2020-05-04 19:03:32');

-- --------------------------------------------------------

--
-- Table structure for table `pokemon`
--

CREATE TABLE `pokemon` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(30) NOT NULL,
  `species` varchar(30) NOT NULL,
  `description` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pokemon`
--

INSERT INTO `pokemon` (`id`, `name`, `species`, `description`, `created_at`) VALUES
(1, 'Bulbasaur', 'Seed', 'Bulbasaur can be seen napping in bright sunlight. There is a seed on its back. By soaking up the sun\'s rays, the seed grows progressively larger.', '2020-05-04 19:03:31'),
(2, 'Ivysaur', 'Seed', 'There is a bud on this Pokemon\'s back. To support its weight, Ivysaur\'s legs and trunk grow thick and strong. If it starts spending more time lying in the sunlight, it\'s a sign that the bud will bloom into a large flower soon.', '2020-05-04 19:03:31'),
(3, 'Venusaur', 'Seed', 'There is a large flower on Venusaur\'s back. The flower is said to take on vivid colors if it gets plenty of nutrition and sunlight. The flower\'s aroma soothes the emotions of people.', '2020-05-04 19:03:31'),
(4, 'Charmander', 'Lizard', 'The flame that burns at the tip of its tail is an indication of its emotions. The flame wavers when Charmander is enjoying itself. If the Pokemon becomes enraged, the flame burns fiercely.', '2020-05-04 19:03:31'),
(5, 'Charmeleon', 'Flame', 'Charmeleon mercilessly destroys its foes using its sharp claws. If it encounters a strong foe, it turns aggressive. In this excited state, the flame at the tip of its tail flares with a bluish white color.', '2020-05-04 19:03:31'),
(6, 'Charizard', 'Flame', 'Charizard flies around the sky in search of powerful opponents. It breathes fire of such great heat that it melts anything. However, it never turns its fiery breath on any opponent weaker than itself.', '2020-05-04 19:03:31'),
(7, 'Squirtle', 'Tiny Turtle', 'Squirtle\'s shell is not merely used for protection. The shell\'s rounded shape and the grooves on its surface help minimize resistance in water, enabling this Pokemon to swim at high speeds.', '2020-05-04 19:03:31'),
(8, 'Wartortle', 'Turtle', 'Its tail is large and covered with a rich, thick fur. The tail becomes increasingly deeper in color as Wartortle ages. The scratches on its shell are evidence of this Pokemon\'s toughness as a battler.', '2020-05-04 19:03:31'),
(9, 'Blastoise', 'Shellfish', 'Blastoise has water spouts that protrude from its shell. The water spouts are very accurate. They can shoot bullets of water with enough accuracy to strike empty cans from a distance of over 160 feet.', '2020-05-04 19:03:31'),
(10, 'Caterpie', 'Worm', 'Caterpie has a voracious appetite. It can devour leaves bigger than its body right before your eyes. From its antenna, this Pokemon releases a terrifically strong odor.', '2020-05-04 19:03:31'),
(11, 'Metapod', 'Cocoon', 'The shell covering this Pokemon\'s body is as hard as an iron slab. Metapod does not move very much. It stays still because it is preparing its soft innards for evolution inside the hard shell.', '2020-05-04 19:03:31'),
(12, 'Butterfree', 'Butterfly', 'Butterfree has a superior ability to search for delicious honey from flowers. It can even search out, extract, and carry honey from flowers that are blooming over six miles from its nest.', '2020-05-04 19:03:31'),
(13, 'Weedle', 'Hairy Bug', 'Weedle has an extremely acute sense of smell. It is capable of distinguishing its favorite kinds of leaves from those it dislikes just by sniffing with its big red proboscis (nose).', '2020-05-04 19:03:31'),
(14, 'Kakuna', 'Cocoon', 'Kakuna remains virtually immobile as it clings to a tree. However, on the inside, it is extremely busy as it prepares for its coming evolution. This is evident from how hot the shell becomes to the touch.', '2020-05-04 19:03:31'),
(15, 'Beedrill', 'Poison Bee', 'Beedrill is extremely territorial. No one should ever approach its nest-this is for their own safety. If angered, they will attack in a furious swarm.', '2020-05-04 19:03:31'),
(16, 'Pidgey', 'Tiny Bird', 'Pidgey has an extremely sharp sense of direction. It is capable of unerringly returning home to its nest, however far it may be removed from its familiar surroundings.', '2020-05-04 19:03:31'),
(17, 'Pidgeotto', 'Bird', 'Pidgeotto claims a large area as its own territory. This Pokemon flies around, patrolling its living space. If its territory is violated, it shows no mercy in thoroughly punishing the foe with its sharp claws.', '2020-05-04 19:03:31'),
(18, 'Pidgeot', 'Bird', 'This Pokemon has a dazzling plumage of beautifully glossy feathers. Many Trainers are captivated by the striking beauty of the feathers on its head, compelling them to choose Pidgeot as their Pokemon.', '2020-05-04 19:03:31'),
(19, 'Rattata', 'Mouse', 'Rattata is cautious in the extreme. Even while it is asleep, it constantly listens by moving its ears around. It is not picky about where it lives-it will make its nest anywhere.', '2020-05-04 19:03:31'),
(20, 'Raticate', 'Mouse', 'Raticate\'s sturdy fangs grow steadily. To keep them ground down, it gnaws on rocks and logs. It may even chew on the walls of houses.', '2020-05-04 19:03:31'),
(21, 'Spearow', 'Tiny Bird', 'Spearow has a very loud cry that can be heard over half a mile away. If its high, keening cry is heard echoing all around, it is a sign that they are warning each other of danger.', '2020-05-04 19:03:31'),
(22, 'Fearow', 'Beak', 'Fearow is recognized by its long neck and elongated beak. They are conveniently shaped for catching prey in soil or water. It deftly moves its long and skinny beak to pluck prey.', '2020-05-04 19:03:31'),
(23, 'Ekans', 'Snake', 'Ekans curls itself up in a spiral while it rests. Assuming this position allows it to quickly respond to a threat from any direction with a glare from its upraised head.', '2020-05-04 19:03:31'),
(24, 'Arbok', 'Cobra', 'This Pokemon is terrifically strong in order to constrict things with its body. It can even flatten steel oil drums. Once Arbok wraps its body around its foe, escaping its crunching embrace is impossible.', '2020-05-04 19:03:31'),
(25, 'Pikachu', 'Mouse', 'Whenever Pikachu comes across something new, it blasts it with a jolt of electricity. If you come across a blackened berry, it\'s evidence that this Pokemon mistook the intensity of its charge.', '2020-05-04 19:03:31'),
(26, 'Raichu', 'Mouse', 'If the electrical sacs become excessively charged, Raichu plants its tail in the ground and discharges. Scorched patches of ground will be found near this Pokemon\'s nest.', '2020-05-04 19:03:31'),
(27, 'Sandshrew', 'Mouse', 'Sandshrew\'s body is configured to absorb water without waste, enabling it to survive in an arid desert. This Pokemon curls up to protect itself from its enemies.', '2020-05-04 19:03:31'),
(28, 'Sandslash', 'Mouse', 'Sandslash\'s body is covered by tough spikes, which are hardened sections of its hide. Once a year, the old spikes fall out, to be replaced with new spikes that grow out from beneath the old ones.', '2020-05-04 19:03:31'),
(29, 'Nidoran F', 'Poison Pin', 'Nidoran F has barbs that secrete a powerful poison. They are thought to have developed as protection for this small-bodied Pokemon. When enraged, it releases a horrible toxin from its horn.', '2020-05-04 19:03:31'),
(30, 'Nidorina', 'Poison Pin', 'When Nidorina are with their friends or family, they keep their barbs tucked away to prevent hurting each other. This Pokemon appears to become nervous if separated from the others.', '2020-05-04 19:03:31'),
(31, 'Nidoqueen', 'Drill', 'Nidoqueen\'s body is encased in extremely hard scales. It is adept at sending foes flying with harsh tackles. This Pokemon is at its strongest when it is defending its young.', '2020-05-04 19:03:31'),
(32, 'Nidoran M', 'Poison Pin', 'Nidoran M has developed muscles for moving its ears. Thanks to them, the ears can be freely moved in any direction. Even the slightest sound does not escape this Pokemon\'s notice.', '2020-05-04 19:03:31'),
(33, 'Nidorino', 'Poison Pin', 'Nidorino has a horn that is harder than a diamond. If it senses a hostile presence, all the barbs on its back bristle up at once, and it challenges the foe with all its might.', '2020-05-04 19:03:31'),
(34, 'Nidoking', 'Drill', 'Nidoking\'s thick tail packs enormously destructive power. With one swing, it can topple a metal transmission tower. Once this Pokemon goes on a rampage, there is no stopping it.', '2020-05-04 19:03:31'),
(35, 'Clefairy', 'Fairy', 'On every night of a full moon, groups of this Pokemon come out to play. When dawn arrives, the tired Clefairy return to their quiet mountain retreats and go to sleep nestled up against each other.', '2020-05-04 19:03:31'),
(36, 'Clefable', 'Fairy', 'Clefable moves by skipping lightly as if it were flying using its wings. Its bouncy step lets it even walk on water. It is known to take strolls on lakes on quiet, moonlit nights.', '2020-05-04 19:03:31'),
(37, 'Vulpix', 'Fox', 'At the time of its birth, Vulpix has one white tail. The tail separates into six if this Pokemon receives plenty of love from its Trainer. The six tails become magnificently curled.', '2020-05-04 19:03:31'),
(38, 'Ninetales', 'Fox', 'Ninetales casts a sinister light from its bright red eyes to gain total control over its foe\'s mind. This Pokemon is said to live for a thousand years.', '2020-05-04 19:03:31'),
(39, 'Jigglypuff', 'Balloon', 'Jigglypuff\'s vocal cords can freely adjust the wavelength of its voice. This Pokemon uses this ability to sing at precisely the right wavelength to make its foes most drowsy.', '2020-05-04 19:03:31'),
(40, 'Wigglytuff', 'Balloon', 'Wigglytuff has large, saucerlike eyes. The surfaces of its eyes are always covered with a thin layer of tears. If any dust gets in this Pokemon\'s eyes, it is quickly washed away.', '2020-05-04 19:03:31'),
(41, 'Zubat', 'Bat', 'Zubat remains quietly unmoving in a dark spot during the bright daylight hours. It does so because prolonged exposure to the sun causes its body to become slightly burned.', '2020-05-04 19:03:31'),
(42, 'Golbat', 'Bat', 'Golbat loves to drink the blood of living things. It is particularly active in the pitch black of night. This Pokemon flits around in the night skies, seeking fresh blood.', '2020-05-04 19:03:31'),
(43, 'Oddish', 'Weed', 'During the daytime, Oddish buries itself in soil to absorb nutrients from the ground using its entire body. The more fertile the soil, the glossier its leaves become.', '2020-05-04 19:03:31'),
(44, 'Gloom', 'Weed', 'Gloom releases a foul fragrance from the pistil of its flower. When faced with danger, the stench worsens. If this Pokemon is feeling calm and secure, it does not release its usual stinky aroma.', '2020-05-04 19:03:31'),
(45, 'Vileplume', 'Flower', 'Vileplume\'s toxic pollen triggers atrocious allergy attacks. That\'s why it is advisable never to approach any attractive flowers in a jungle, however pretty they may be.', '2020-05-04 19:03:31'),
(46, 'Paras', 'Mushroom', 'Paras has parasitic mushrooms growing on its back called tochukaso. They grow large by drawing nutrients from this Bug Pokemon host. They are highly valued as a medicine for extending life.', '2020-05-04 19:03:31'),
(47, 'Parasect', 'Mushroom', 'Parasect is known to infest large trees en masse and drain nutrients from the lower trunk and roots. When an infested tree dies, they move onto another tree all at once.', '2020-05-04 19:03:31'),
(48, 'Venonat', 'Insect', 'Venonat is said to have evolved with a coat of thin, stiff hair that covers its entire body for protection. It possesses large eyes that never fail to spot even minuscule prey.', '2020-05-04 19:03:31'),
(49, 'Venomoth', 'Poison Moth', 'Venomoth is nocturnal-it is a Pokemon that only becomes active at night. Its favorite prey are small insects that gather around streetlights, attracted by the light in the darkness.', '2020-05-04 19:03:31'),
(50, 'Diglett', 'Mole', 'Diglett are raised in most farms. The reason is simple-wherever this Pokemon burrows, the soil is left perfectly tilled for planting crops. This soil is made ideal for growing delicious vegetables.', '2020-05-04 19:03:31'),
(51, 'Dugtrio', 'Mole', 'Dugtrio are actually triplets that emerged from one body. As a result, each triplet thinks exactly like the other two triplets. They work cooperatively to burrow endlessly.', '2020-05-04 19:03:31'),
(52, 'Meowth', 'Scratch Cat', 'Meowth withdraws its sharp claws into its paws to slinkily sneak about without making any incriminating footsteps. For some reason, this Pokemon loves shiny coins that glitter with light.', '2020-05-04 19:03:31'),
(53, 'Persian', 'Classy Cat', 'Persian has six bold whiskers that give it a look of toughness. The whiskers sense air movements to determine what is in the Pokemon\'s surrounding vicinity. It becomes docile if grabbed by the whiskers.', '2020-05-04 19:03:31'),
(54, 'Psyduck', 'Duck', 'Psyduck uses a mysterious power. When it does so, this Pokemon generates brain waves that are supposedly only seen in sleepers. This discovery spurred controversy among scholars.', '2020-05-04 19:03:31'),
(55, 'Golduck', 'Duck', 'The webbed flippers on its forelegs and hind legs and the streamlined body of Golduck give it frightening speed. This Pokemon is definitely much faster than even the most athletic swimmer.', '2020-05-04 19:03:31'),
(56, 'Mankey', 'Pig Monkey', 'When Mankey starts shaking and its nasal breathing turns rough, it\'s a sure sign that it is becoming angry. However, because it goes into a towering rage almost instantly, it is impossible for anyone to flee its wrath.', '2020-05-04 19:03:31'),
(57, 'Primeape', 'Pig Monkey', 'When Primeape becomes furious, its blood circulation is boosted. In turn, its muscles are made even stronger. However, it also becomes much less intelligent at the same time.', '2020-05-04 19:03:31'),
(58, 'Growlithe', 'Puppy', 'Growlithe has a superb sense of smell. Once it smells anything, this Pokemon won\'t forget the scent, no matter what. It uses its advanced olfactory sense to determine the emotions of other living things.', '2020-05-04 19:03:31'),
(59, 'Arcanine', 'Legendary', 'Arcanine is known for its high speed. It is said to be capable of running over 6,200 miles in a single day and night. The fire that blazes wildly within this Pokemon\'s body is its source of power.', '2020-05-04 19:03:31'),
(60, 'Poliwag', 'Tadpole', 'Poliwag has a very thin skin. It is possible to see the Pokemon\'s spiral innards right through the skin. Despite its thinness, however, the skin is also very flexible. Even sharp fangs bounce right off it.', '2020-05-04 19:03:31'),
(61, 'Poliwhirl', 'Tadpole', 'The surface of Poliwhirl\'s body is always wet and slick with a slimy fluid. Because of this slippery covering, it can easily slip and slide out of the clutches of any enemy in battle.', '2020-05-04 19:03:31'),
(62, 'Poliwrath', 'Tadpole', 'Poliwrath\'s highly developed, brawny muscles never grow fatigued, however much it exercises. It is so tirelessly strong, this Pokemon can swim back and forth across the ocean without effort.', '2020-05-04 19:03:31'),
(63, 'Abra', 'Psi', 'Abra sleeps for eighteen hours a day. However, it can sense the presence of foes even while it is sleeping. In such a situation, this Pokemon immediately teleports to safety.', '2020-05-04 19:03:31'),
(64, 'Kadabra', 'Psi', 'Kadabra emits a peculiar alpha wave if it develops a headache. Only those people with a particularly strong psyche can hope to become a Trainer of this Pokemon.', '2020-05-04 19:03:31'),
(65, 'Alakazam', 'Psi', 'Alakazam\'s brain continually grows, making its head far too heavy to support with its neck. This Pokemon holds its head up using its psychokinetic power instead.', '2020-05-04 19:03:31'),
(66, 'Machop', 'Superpower', 'Machop\'s muscles are special-they never get sore no matter how much they are used in exercise. This Pokemon has sufficient power to hurl a hundred adult humans.', '2020-05-04 19:03:31'),
(67, 'Machoke', 'Superpower', 'Machoke\'s thoroughly toned muscles possess the hardness of steel. This Pokemon has so much strength, it can easily hold aloft a sumo wrestler on just one finger.', '2020-05-04 19:03:31'),
(68, 'Machamp', 'Superpower', 'Machamp has the power to hurl anything aside. However, trying to do any work requiring care and dexterity causes its arms to get tangled. This Pokemon tends to leap into action before it thinks.', '2020-05-04 19:03:31'),
(69, 'Bellsprout', 'Flower', 'Bellsprout\'s thin and flexible body lets it bend and sway to avoid any attack, however strong it may be. From its mouth, this Pokemon spits a corrosive fluid that melts even iron.', '2020-05-04 19:03:31'),
(70, 'Weepinbell', 'Flycatcher', 'Weepinbell has a large hook on its rear end. At night, the Pokemon hooks on to a tree branch and goes to sleep. If it moves around in its sleep, it may wake up to find itself on the ground.', '2020-05-04 19:03:31'),
(71, 'Victreebel', 'Flycatcher', 'Victreebel has a long vine that extends from its head. This vine is waved and flicked about as if it were an animal to attract prey. When an unsuspecting prey draws near, this Pokemon swallows it whole.', '2020-05-04 19:03:31'),
(72, 'Tentacool', 'Jellyfish', 'Tentacool\'s body is largely composed of water. If it is removed from the sea, it dries up like parchment. If this Pokemon happens to become dehydrated, put it back into the sea.', '2020-05-04 19:03:31'),
(73, 'Tentacruel', 'Jellyfish', 'Tentacruel has large red orbs on its head. The orbs glow before lashing the vicinity with a harsh ultrasonic blast. This Pokemon\'s outburst creates rough waves around it.', '2020-05-04 19:03:31'),
(74, 'Geodude', 'Rock', 'The longer a Geodude lives, the more its edges are chipped and worn away, making it more rounded in appearance. However, this Pokemon\'s heart will remain hard, craggy, and rough always.', '2020-05-04 19:03:31'),
(75, 'Graveler', 'Rock', 'Graveler grows by feeding on rocks. Apparently, it prefers to eat rocks that are covered in moss. This Pokemon eats its way through a ton of rocks on a daily basis.', '2020-05-04 19:03:31'),
(76, 'Golem', 'Megaton', 'Golem live up on mountains. If there is a large earthquake, these Pokemon will come rolling down off the mountains en masse to the foothills below.', '2020-05-04 19:03:31'),
(77, 'Ponyta', 'Fire Horse', 'Ponyta is very weak at birth. It can barely stand up. This Pokemon becomes stronger by stumbling and falling to keep up with its parent.', '2020-05-04 19:03:31'),
(78, 'Rapidash', 'Fire Horse', 'Rapidash usually can be seen casually cantering in the fields and plains. However, when this Pokemon turns serious, its fiery manes flare and blaze as it gallops its way up to 150 mph.', '2020-05-04 19:03:31'),
(79, 'Slowpoke', 'Dopey', 'Slowpoke uses its tail to catch prey by dipping it in water at the side of a river. However, this Pokemon often forgets what it\'s doing and often spends entire days just loafing at water\'s edge.', '2020-05-04 19:03:31'),
(80, 'Slowbro', 'Hermit Crab', 'Slowbro\'s tail has a Shellder firmly attached with a bite. As a result, the tail can\'t be used for fishing anymore. This causes Slowbro to grudgingly swim and catch prey instead.', '2020-05-04 19:03:31'),
(81, 'Magnemite', 'Magnet', 'Magnemite attaches itself to power lines to feed on electricity. If your house has a power outage, check your circuit breakers. You may find a large number of this Pokemon clinging to the breaker box.', '2020-05-04 19:03:31'),
(82, 'Magneton', 'Magnet', 'Magneton emits a powerful magnetic force that is fatal to mechanical devices. As a result, large cities sound sirens to warn citizens of large-scale outbreaks of this Pokemon.', '2020-05-04 19:03:31'),
(83, 'Farfetch\'d', 'Wild Duck', 'Farfetch\'d is always seen with a stalk from a plant of some sort. Apparently, there are good stalks and bad stalks. This Pokemon has been known to fight with others over stalks.', '2020-05-04 19:03:31'),
(84, 'Doduo', 'Twin Bird', 'Doduo\'s two heads never sleep at the same time. Its two heads take turns sleeping, so one head can always keep watch for enemies while the other one sleeps.', '2020-05-04 19:03:31'),
(85, 'Dodrio', 'Triple Bird', 'Watch out if Dodrio\'s three heads are looking in three separate directions. It\'s a sure sign that it is on its guard. Don\'t go near this Pokemon if it\'s being wary-it may decide to peck you.', '2020-05-04 19:03:31'),
(86, 'Seel', 'Sea Lion', 'Seel hunts for prey in the frigid sea underneath sheets of ice. When it needs to breathe, it punches a hole through the ice with the sharply protruding section of its head.', '2020-05-04 19:03:31'),
(87, 'Dewgong', 'Sea Lion', 'Dewgong loves to snooze on bitterly cold ice. The sight of this Pokemon sleeping on a glacier was mistakenly thought to be a mermaid by a mariner long ago.', '2020-05-04 19:03:31'),
(88, 'Grimer', 'Sludge', 'Grimer\'s sludgy and rubbery body can be forced through any opening, however small it may be. This Pokemon enters sewer pipes to drink filthy wastewater.', '2020-05-04 19:03:31'),
(89, 'Muk', 'Sludge', 'From Muk\'s body seeps a foul fluid that gives off a nose-bendingly horrible stench. Just one drop of this Pokemon\'s body fluid can turn a pool stagnant and rancid.', '2020-05-04 19:03:31'),
(90, 'Shellder', 'Bivalve', 'At night, this Pokemon uses its broad tongue to burrow a hole in the seafloor sand and then sleep in it. While it is sleeping, Shellder closes its shell, but leaves its tongue hanging out.', '2020-05-04 19:03:31'),
(91, 'Cloyster', 'Bivalve', 'Cloyster is capable of swimming in the sea. It does so by swallowing water, then jetting it out toward the rear. This Pokemon shoots spikes from its shell using the same system.', '2020-05-04 19:03:31'),
(92, 'Gastly', 'Gas', 'Gastly is largely composed of gaseous matter. When exposed to a strong wind, the gaseous body quickly dwindles away. Groups of this Pokemon cluster under the eaves of houses to escape the ravages of wind.', '2020-05-04 19:03:31'),
(93, 'Haunter', 'Gas', 'Haunter is a dangerous Pokemon. If one beckons you while floating in darkness, you must never approach it. This Pokemon will try to lick you with its tongue and steal your life away.', '2020-05-04 19:03:31'),
(94, 'Gengar', 'Shadow', 'Sometimes, on a dark night, your shadow thrown by a streetlight will suddenly and startlingly overtake you. It is actually a Gengar running past you, pretending to be your shadow.', '2020-05-04 19:03:31'),
(95, 'Onix', 'Rock Snake', 'Onix has a magnet in its brain. It acts as a compass so that this Pokemon does not lose direction while it is tunneling. As it grows older, its body becomes increasingly rounder and smoother.', '2020-05-04 19:03:31'),
(96, 'Drowzee', 'Hypnosis', 'If your nose becomes itchy while you are sleeping, it\'s a sure sign that one of these Pokemon is standing above your pillow and trying to eat your dream through your nostrils.', '2020-05-04 19:03:31'),
(97, 'Hypno', 'Hypnosis', 'Hypno holds a pendulum in its hand. The arcing movement and glitter of the pendulum lull the foe into a deep state of hypnosis. While this Pokemon searches for prey, it polishes the pendulum.', '2020-05-04 19:03:31'),
(98, 'Krabby', 'River Crab', 'Krabby live on beaches, burrowed inside holes dug into the sand. On sandy beaches with little in the way of food, these Pokemon can be seen squabbling with each other over territory.', '2020-05-04 19:03:31'),
(99, 'Kingler', 'Pincer', 'Kingler has an enormous, oversized claw. It waves this huge claw in the air to communicate with others. However, because the claw is so heavy, the Pokemon quickly tires.', '2020-05-04 19:03:31'),
(100, 'Voltorb', 'Ball', 'Voltorb was first sighted at a company that manufactures Poké Balls. The link between that sighting and the fact that this Pokemon looks very similar to a Poké Ball remains a mystery.', '2020-05-04 19:03:31'),
(101, 'Electrode', 'Ball', 'Electrode eats electricity in the atmosphere. On days when lightning strikes, you can see this Pokemon exploding all over the place from eating too much electricity.', '2020-05-04 19:03:31'),
(102, 'Exeggcute', 'Egg', 'This Pokemon consists of six eggs that form a closely knit cluster. The six eggs attract each other and spin around. When cracks increasingly appear on the eggs, Exeggcute is close to evolution.', '2020-05-04 19:03:31'),
(103, 'Exeggutor', 'Coconut', 'Exeggutor originally came from the tropics. Its heads steadily grow larger from exposure to strong sunlight. It is said that when the heads fall off, they group together to form Exeggcute.', '2020-05-04 19:03:31'),
(104, 'Cubone', 'Lonely', 'Cubone pines for the mother it will never see again. Seeing a likeness of its mother in the full moon, it cries. The stains on the skull the Pokemon wears are made by the tears it sheds.', '2020-05-04 19:03:31'),
(105, 'Marowak', 'Bone Keeper', 'Marowak is the evolved form of a Cubone that has overcome its sadness at the loss of its mother and grown tough. This Pokemon\'s tempered and hardened spirit is not easily broken.', '2020-05-04 19:03:31'),
(106, 'Hitmonlee', 'Kicking', 'Hitmonlee\'s legs freely contract and stretch. Using these springlike legs, it bowls over foes with devastating kicks. After battle, it rubs down its legs and loosens the muscles to overcome fatigue.', '2020-05-04 19:03:31'),
(107, 'Hitmonchan', 'Punching', 'Hitmonchan is said to possess the spirit of a boxer who had been working toward a world championship. This Pokemon has an indomitable spirit and will never give up in the face of adversity.', '2020-05-04 19:03:31'),
(108, 'Lickitung', 'Licking', 'Whenever Lickitung comes across something new, it will unfailingly give it a lick. It does so because it memorizes things by texture and by taste. It is somewhat put off by sour things.', '2020-05-04 19:03:31'),
(109, 'Koffing', 'Poison Gas', 'If Koffing becomes agitated, it raises the toxicity of its internal gases and jets them out from all over its body. This Pokemon may also overinflate its round body, then explode.', '2020-05-04 19:03:31'),
(110, 'Weezing', 'Poison Gas', 'Weezing loves the gases given off by rotted kitchen garbage. This Pokemon will find a dirty, unkempt house and make it its home. At night, when the people in the house are asleep, it will go through the trash.', '2020-05-04 19:03:31'),
(111, 'Rhyhorn', 'Spikes', 'Rhyhorn runs in a straight line, smashing everything in its path. It is not bothered even if it rushes headlong into a block of steel. This Pokemon may feel some pain from the collision the next day, however.', '2020-05-04 19:03:31'),
(112, 'Rhydon', 'Drill', 'Rhydon\'s horn can crush even uncut diamonds. One sweeping blow of its tail can topple a building. This Pokemon\'s hide is extremely tough. Even direct cannon hits don\'t leave a scratch.', '2020-05-04 19:03:31'),
(113, 'Chansey', 'Egg', 'Chansey lays nutritionally excellent eggs on an everyday basis. The eggs are so delicious, they are easily and eagerly devoured by even those people who have lost their appetite.', '2020-05-04 19:03:31'),
(114, 'Tangela', 'Vine', 'Tangela\'s vines snap off easily if they are grabbed. This happens without pain, allowing it to make a quick getaway. The lost vines are replaced by newly grown vines the very next day.', '2020-05-04 19:03:31'),
(115, 'Kangaskhan', 'Parent', 'If you come across a young Kangaskhan playing by itself, you must never disturb it or attempt to catch it. The baby Pokemon\'s parent is sure to be in the area, and it will become violently enraged at you.', '2020-05-04 19:03:31'),
(116, 'Horsea', 'Dragon', 'Horsea eats small insects and moss off of rocks. If the ocean current turns fast, this Pokemon anchors itself by wrapping its tail around rocks or coral to prevent being washed away.', '2020-05-04 19:03:31'),
(117, 'Seadra', 'Dragon', 'Seadra sleeps after wriggling itself between the branches of coral. Those trying to harvest coral are occasionally stung by this Pokemon\'s poison barbs if they fail to notice it.', '2020-05-04 19:03:31'),
(118, 'Goldeen', 'Goldfish', 'Goldeen is a very beautiful Pokemon with fins that billow elegantly in water. However, don\'t let your guard down around this Pokemon-it could ram you powerfully with its horn.', '2020-05-04 19:03:31'),
(119, 'Seaking', 'Goldfish', 'In the autumn, Seaking males can be seen performing courtship dances in riverbeds to woo females. During this season, this Pokemon\'s body coloration is at its most beautiful.', '2020-05-04 19:03:31'),
(120, 'Staryu', 'Star Shape', 'Staryu\'s center section has an organ called the core that shines bright red. If you go to a beach toward the end of summer, the glowing cores of these Pokemon look like the stars in the sky.', '2020-05-04 19:03:31'),
(121, 'Starmie', 'Mysterious', 'Starmie\'s center section-the core-glows brightly in seven colors. Because of its luminous nature, this Pokemon has been given the nickname \"the gem of the sea.\"', '2020-05-04 19:03:31'),
(122, 'Mr.Mime', 'Barrier', 'Mr. Mime is a master of pantomime. Its gestures and motions convince watchers that something unseeable actually exists. Once the watchers are convinced, the unseeable thing exists as if it were real.', '2020-05-04 19:03:31'),
(123, 'Scyther', 'Mantis', 'Scyther is blindingly fast. Its blazing speed enhances the effectiveness of the twin scythes on its forearms. This Pokemon\'s scythes are so effective, they can slice through thick logs in one wicked stroke.', '2020-05-04 19:03:31'),
(124, 'Jynx', 'Human Shape', 'Jynx walks rhythmically, swaying and shaking its hips as if it were dancing. Its motions are so bouncingly alluring, people seeing it are compelled to shake their hips without giving any thought to what they are doing.', '2020-05-04 19:03:31'),
(125, 'Electabuzz', 'Electric', 'When a storm arrives, gangs of this Pokemon compete with each other to scale heights that are likely to be stricken by lightning bolts. Some towns use Electabuzz in place of lightning rods.', '2020-05-04 19:03:31'),
(126, 'Magmar', 'Spitfire', 'In battle, Magmar blows out intensely hot flames from all over its body to intimidate its opponent. This Pokemon\'s fiery bursts create heat waves that ignite grass and trees in its surroundings.', '2020-05-04 19:03:31'),
(127, 'Pinsir', 'Stag Beetle', 'Pinsir is astoundingly strong. It can grip a foe weighing twice its weight in its horns and easily lift it. This Pokemon\'s movements turn sluggish in cold places.', '2020-05-04 19:03:31'),
(128, 'Tauros', 'Wild Bull', 'This Pokemon is not satisfied unless it is rampaging at all times. If there is no opponent for Tauros to battle, it will charge at thick trees and knock them down to calm itself.', '2020-05-04 19:03:31'),
(129, 'Magikarp', 'Fish', 'Magikarp is a pathetic excuse for a Pokemon that is only capable of flopping and splashing. This behavior prompted scientists to undertake research into it.', '2020-05-04 19:03:31'),
(130, 'Gyarados', 'Atrocious', 'When Magikarp evolves into Gyarados, its brain cells undergo a structural transformation. It is said that this transformation is to blame for this Pokemon\'s wildly violent nature.', '2020-05-04 19:03:31'),
(131, 'Lapras', 'Transport', 'People have driven Lapras almost to the point of extinction. In the evenings, this Pokemon is said to sing plaintively as it seeks what few others of its kind still remain.', '2020-05-04 19:03:31'),
(132, 'Ditto', 'Transform', 'Ditto rearranges its cell structure to transform itself into other shapes. However, if it tries to transform itself into something by relying on its memory, this Pokemon manages to get details wrong.', '2020-05-04 19:03:31'),
(133, 'Eevee', 'Evolution', 'Eevee has an unstable genetic makeup that suddenly mutates due to the environment in which it lives. Radiation from various stones causes this Pokemon to evolve.', '2020-05-04 19:03:31'),
(134, 'Vaporeon', 'Bubble Jet', 'Vaporeon underwent a spontaneous mutation and grew fins and gills that allow it to live underwater. This Pokemon has the ability to freely control water.', '2020-05-04 19:03:31'),
(135, 'Jolteon', 'Lightning', 'Jolteon\'s cells generate a low level of electricity. This power is amplified by the static electricity of its fur, enabling the Pokemon to drop thunderbolts. The bristling fur is made of electrically charged needles.', '2020-05-04 19:03:31'),
(136, 'Flareon', 'Flame', 'Flareon\'s fluffy fur has a functional purpose-it releases heat into the air so that its body does not get excessively hot. This Pokemon\'s body temperature can rise to a maximum of 1,650 degrees Fahrenheit.', '2020-05-04 19:03:31'),
(137, 'Porygon', 'Virtual', 'Porygon is capable of reverting itself entirely back to program data and entering cyberspace. This Pokemon is copy protected so it cannot be duplicated by copying.', '2020-05-04 19:03:31'),
(138, 'Omanyte', 'Spiral', 'Omanyte is one of the ancient and long-since-extinct Pokemon that have been regenerated from fossils by people. If attacked by an enemy, it withdraws itself inside its hard shell.', '2020-05-04 19:03:31'),
(139, 'Omastar', 'Spiral', 'Omastar uses its tentacles to capture its prey. It is believed to have become extinct because its shell grew too large and heavy, causing its movements to become too slow and ponderous.', '2020-05-04 19:03:31'),
(140, 'Kabuto', 'Shellfish', 'Kabuto is a Pokemon that has been regenerated from a fossil. However, in extremely rare cases, living examples have been discovered. The Pokemon has not changed at all for 300 million years.', '2020-05-04 19:03:31'),
(141, 'Kabutops', 'Shellfish', 'Kabutops swam underwater to hunt for its prey in ancient times. The Pokemon was apparently evolving from being a water dweller to living on land as evident from the beginnings of change in its gills and legs.', '2020-05-04 19:03:31'),
(142, 'Aerodactyl', 'Fossil', 'Aerodactyl is a Pokemon from the age of dinosaurs. It was regenerated from genetic material extracted from amber. It is imagined to have been the king of the skies in ancient times.', '2020-05-04 19:03:31'),
(143, 'Snorlax', 'Sleeping', 'Snorlax\'s typical day consists of nothing more than eating and sleeping. It is such a docile Pokemon that there are children who use its expansive belly as a place to play.', '2020-05-04 19:03:31'),
(144, 'Articuno', 'Freeze', 'Articuno is a legendary bird Pokemon that can control ice. The flapping of its wings chills the air. As a result, it is said that when this Pokemon flies, snow will fall.', '2020-05-04 19:03:31'),
(145, 'Zapdos', 'Electric', 'Zapdos is a legendary bird Pokemon that has the ability to control electricity. It usually lives in thunderclouds. The Pokemon gains power if it is stricken by lightning bolts.', '2020-05-04 19:03:31'),
(146, 'Moltres', 'Flame', 'Moltres is a legendary bird Pokemon that has the ability to control fire. If this Pokemon is injured, it is said to dip its body in the molten magma of a volcano to burn and heal itself.', '2020-05-04 19:03:31'),
(147, 'Dratini', 'Dragon', 'Dratini continually molts and sloughs off its old skin. It does so because the life energy within its body steadily builds to reach uncontrollable levels.', '2020-05-04 19:03:31'),
(148, 'Dragonair', 'Dragon', 'Dragonair stores an enormous amount of energy inside its body. It is said to alter weather conditions in its vicinity by discharging energy from the crystals on its neck and tail.', '2020-05-04 19:03:31'),
(149, 'Dragonite', 'Dragon', 'Dragonite is capable of circling the globe in just 16 hours. It is a kindhearted Pokemon that leads lost and foundering ships in a storm to the safety of land.', '2020-05-04 19:03:31'),
(150, 'Mewtwo', 'Genetic', 'Mewtwo is a Pokemon that was created by genetic manipulation. However, even though the scientific power of humans created this Pokemon\'s body, they failed to endow Mewtwo with a compassionate heart.', '2020-05-04 19:03:31'),
(151, 'Mew', 'New Species', 'Mew is said to possess the genetic composition of all Pokemon. It is capable of making itself invisible at will, so it entirely avoids notice even if it approaches people.', '2020-05-04 19:03:31');

-- --------------------------------------------------------

--
-- Table structure for table `pokemon_types`
--

CREATE TABLE `pokemon_types` (
  `pokemon_id` int(10) UNSIGNED NOT NULL,
  `type_id` int(10) UNSIGNED NOT NULL,
  `order` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pokemon_types`
--

INSERT INTO `pokemon_types` (`pokemon_id`, `type_id`, `order`) VALUES
(1, 14, 1),
(1, 16, 2),
(2, 14, 1),
(2, 16, 2),
(3, 14, 1),
(3, 16, 2),
(4, 4, 1),
(5, 4, 1),
(6, 4, 1),
(6, 13, 2),
(7, 18, 1),
(8, 18, 1),
(9, 18, 1),
(10, 1, 1),
(11, 1, 1),
(12, 1, 1),
(12, 13, 2),
(13, 1, 1),
(13, 16, 2),
(14, 1, 1),
(14, 16, 2),
(15, 1, 1),
(15, 16, 2),
(16, 7, 1),
(16, 13, 2),
(17, 7, 1),
(17, 13, 2),
(18, 7, 1),
(18, 13, 2),
(19, 7, 1),
(20, 7, 1),
(21, 7, 1),
(21, 13, 2),
(22, 7, 1),
(22, 13, 2),
(23, 16, 1),
(24, 16, 1),
(25, 11, 1),
(26, 11, 1),
(27, 6, 1),
(28, 6, 1),
(29, 16, 1),
(30, 16, 1),
(31, 6, 2),
(31, 16, 1),
(32, 16, 1),
(33, 16, 1),
(34, 6, 2),
(34, 16, 1),
(35, 3, 1),
(36, 3, 1),
(37, 4, 1),
(38, 4, 1),
(39, 3, 2),
(39, 7, 1),
(40, 3, 2),
(40, 7, 1),
(41, 13, 2),
(41, 16, 1),
(42, 13, 2),
(42, 16, 1),
(43, 14, 1),
(43, 16, 2),
(44, 14, 1),
(44, 16, 2),
(45, 14, 1),
(45, 16, 2),
(46, 1, 1),
(46, 14, 2),
(47, 1, 1),
(47, 14, 2),
(48, 1, 1),
(48, 16, 2),
(49, 1, 1),
(49, 16, 2),
(50, 6, 1),
(51, 6, 1),
(52, 7, 1),
(53, 7, 1),
(54, 18, 1),
(55, 18, 1),
(56, 12, 1),
(57, 12, 1),
(58, 4, 1),
(59, 4, 1),
(60, 18, 1),
(61, 18, 1),
(62, 12, 2),
(62, 18, 1),
(63, 8, 1),
(64, 8, 1),
(65, 8, 1),
(66, 12, 1),
(67, 12, 1),
(68, 12, 1),
(69, 14, 1),
(69, 16, 2),
(70, 14, 1),
(70, 16, 2),
(71, 14, 1),
(71, 16, 2),
(72, 16, 2),
(72, 18, 1),
(73, 16, 2),
(73, 18, 1),
(74, 6, 2),
(74, 17, 1),
(75, 6, 2),
(75, 17, 1),
(76, 6, 2),
(76, 17, 1),
(77, 4, 1),
(78, 4, 1),
(79, 8, 2),
(79, 18, 1),
(80, 8, 2),
(80, 18, 1),
(81, 9, 1),
(81, 11, 1),
(82, 9, 2),
(82, 11, 1),
(83, 7, 1),
(83, 13, 2),
(84, 7, 1),
(84, 13, 2),
(85, 7, 1),
(85, 13, 2),
(86, 18, 1),
(87, 15, 2),
(87, 18, 1),
(88, 16, 1),
(89, 16, 1),
(90, 18, 1),
(91, 15, 1),
(91, 18, 1),
(92, 5, 2),
(92, 16, 2),
(93, 5, 1),
(93, 16, 2),
(94, 5, 1),
(94, 16, 2),
(95, 6, 2),
(95, 17, 1),
(96, 8, 1),
(97, 8, 1),
(98, 18, 1),
(99, 18, 1),
(100, 11, 1),
(101, 11, 1),
(102, 8, 2),
(102, 14, 1),
(103, 8, 2),
(103, 14, 1),
(104, 6, 1),
(105, 6, 1),
(106, 12, 1),
(107, 12, 1),
(108, 7, 1),
(109, 16, 1),
(110, 16, 1),
(111, 6, 1),
(111, 17, 2),
(112, 6, 1),
(112, 17, 2),
(113, 7, 1),
(114, 14, 1),
(115, 7, 1),
(116, 18, 1),
(117, 18, 1),
(118, 18, 1),
(119, 18, 1),
(120, 18, 1),
(121, 8, 2),
(121, 18, 1),
(122, 3, 1),
(122, 8, 2),
(123, 1, 1),
(123, 13, 2),
(124, 8, 2),
(124, 15, 1),
(125, 11, 1),
(126, 4, 1),
(127, 1, 1),
(128, 7, 1),
(129, 18, 1),
(130, 13, 2),
(130, 18, 1),
(131, 15, 2),
(131, 18, 1),
(132, 7, 1),
(133, 7, 1),
(134, 18, 1),
(135, 11, 1),
(136, 4, 1),
(137, 7, 1),
(138, 17, 1),
(138, 18, 2),
(139, 17, 1),
(139, 18, 2),
(140, 17, 1),
(140, 18, 2),
(141, 17, 1),
(141, 18, 2),
(142, 13, 2),
(142, 17, 1),
(143, 7, 1),
(144, 13, 2),
(144, 15, 1),
(145, 11, 1),
(145, 13, 2),
(146, 4, 1),
(146, 13, 2),
(147, 2, 1),
(148, 2, 1),
(149, 2, 1),
(149, 13, 2),
(150, 8, 1),
(151, 8, 1);

-- --------------------------------------------------------

--
-- Table structure for table `types`
--

CREATE TABLE `types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(20) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `types`
--

INSERT INTO `types` (`id`, `name`, `created_at`) VALUES
(1, 'Bug', '2020-05-04 19:03:31'),
(2, 'Dragon', '2020-05-04 19:03:31'),
(3, 'Fairy', '2020-05-04 19:03:31'),
(4, 'Fire', '2020-05-04 19:03:31'),
(5, 'Ghost', '2020-05-04 19:03:31'),
(6, 'Ground', '2020-05-04 19:03:31'),
(7, 'Normal', '2020-05-04 19:03:31'),
(8, 'Psychic', '2020-05-04 19:03:31'),
(9, 'Steel', '2020-05-04 19:03:31'),
(10, 'Dark', '2020-05-04 19:03:31'),
(11, 'Electric', '2020-05-04 19:03:31'),
(12, 'Fighting', '2020-05-04 19:03:31'),
(13, 'Flying', '2020-05-04 19:03:31'),
(14, 'Grass', '2020-05-04 19:03:31'),
(15, 'Ice', '2020-05-04 19:03:31'),
(16, 'Poison', '2020-05-04 19:03:31'),
(17, 'Rock', '2020-05-04 19:03:31'),
(18, 'Water', '2020-05-04 19:03:31');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `created_at`) VALUES
(1, 'admin', '$2y$10$a3onQw4i.GVExINbxzZaW.5vlWrGhKb6.pDBIYp2p818c9C.8mVwW', '2020-05-04 19:03:31');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `app_config`
--
ALTER TABLE `app_config`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `pokemon`
--
ALTER TABLE `pokemon`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pokemon_types`
--
ALTER TABLE `pokemon_types`
  ADD PRIMARY KEY (`pokemon_id`,`type_id`),
  ADD KEY `type_id` (`type_id`);

--
-- Indexes for table `types`
--
ALTER TABLE `types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `types`
--
ALTER TABLE `types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `pokemon_types`
--
ALTER TABLE `pokemon_types`
  ADD CONSTRAINT `pokemon_types_ibfk_1` FOREIGN KEY (`pokemon_id`) REFERENCES `pokemon` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `pokemon_types_ibfk_2` FOREIGN KEY (`type_id`) REFERENCES `types` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
