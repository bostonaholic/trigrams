require 'trigram_analyzer'
require 'trigram_generator'

text = "The boys talked for perhaps an hour longer, mostly about the airship, for it was the latest mechanical affair in which Tom was interested, and, naturally, foremost in his thoughts. Then Ned went home first, however, telephoning from Tom's house to the bank president about having seen the suspicious men. That official thanked his young employee, and said he would take all necessary precautions. The telephone message was not sent until Mr. Swift was out of hearing, as Tom was determined that his father should have no unnecessary worry about the unscrupulous men. As it was, the news that the gang was out of jail had caused the aged inventor some alarm.

It was not without some anxiety that Tom arose the next morning, fearing he would hear news that the bank had been broken into, but no such alarming report circulated in Shopton. In fact having made some inquiries that day of Ned, he learned that no trace had been seen of the mysterious men. The police had been on the lookout, but they had seen nothing of them.

The next two weeks were busy ones for Tom and Mr. Sharp. Aided occasionally by Mr. Swift, and with Garret Jackson, the engineer, to lend a hand whenever needed, the aeronaut and the owner of the speedy Arrow made considerable progress on their airship.

A short description of the new airship may not be out of place now. It was built after plans Mr. Sharp had shown to Tom and his father soon after the thrilling rescue of the aeronaut from the blazing balloon over Lake Carlopa. The general idea of the airship was that of the familiar aeroplane, but in addition to the sustaining surfaces of the planes, there was an aluminum, cigar-shaped tank, holding a new and very powerful gas, which would serve to keep the ship afloat even when not in motion.

Two sets of planes, one above the other, were used, bringing the airship into the biplane class. There were also two large propellers, one in front and the other at the rear. These were carefully made, of different layers of wood \"built up\" as they are called, to make them stronger. They were eight feet in diameter, and driven by a twenty-cylinder, air-cooled, motor, whirled around at the rate of fifteen hundred revolutions a minute. When operated at full speed the airship was capable of making eighty miles an hour, against a moderate wind.

But if the use of the peculiarly-shaped planes and the gas container, with the secret but powerful vapor in it were something new in airship construction, so was the car in which the operator and travelers were to live during a voyage. It was a complete living room, with the engine and other apparatus, including that for generating the gas, in a separate compartment, and the whole was the combined work of Tom and Mr. Sharp. There were accommodations for five persons, with sleeping berths, a small galley or kitchen, where food could be prepared, and several easy chairs where the travelers could rest in comfort while skimming along high in the air, as fast as the fastest railroad train.

There was room enough to carry stores for a voyage of a week or more, and enough gas could be manufactured aboard the ship, in addition to that taken in the aluminum case before starting, to sustain the ship for two weeks. The engine, steering apparatus, and the gas machine were within easy reach and control of the pilot, who was to be stationed in a small room in the \"bow\" of the ship. An electric stove served to warm the interior of the car, and also provided means for cooking the food.

The airship could be launched either by starting it along the ground, on rubber-tired wheels, as is done in the case of the ordinary aeroplane, or it could be lifted by the gas, just as is done with a balloon. In short there were many novel features about the ship.

The gas test, which took place a few days later, showed that the young inventor and Mr. Sharp had made no mistake this time. No explosion followed, the needle valve controlling the powerful vapor perfectly."

patterns = TrigramAnalyzer.analyze_text(text)
new_text = TrigramGenerator.generate_text(patterns)
puts new_text

