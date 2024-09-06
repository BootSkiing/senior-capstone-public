# Senior Capstone - Defense Against Flash Write Denial of Service Attacks in IoT Devices
This capstone project was an experiement in preventing a novel denial of service attack targeting embedded IoT devices.

See the full paper [here]('/Defense Against Flash Write Denial of Service Attacks in IoT Devices.pdf')

The Internet of Things has allowed for
widespread integration of technology in the
physical world. As we near Industry 4.0, that
connectivity will only continue to grow. This
multiplies the consequences of IoT device failures. A shortcoming of many IoT devices is
the write durability of their non-volatile storage, which is commonly flash memory. An at-
tacker can exploit this limited durability by repeatedly writing to the device, which can phys-
ically destroy it. While various approaches to
this problem have been proposed, prior work focuses on software level mitigations. In the event
of a full software compromise, these controls are
bypassed. This paper addresses that problem by
proposing the use of a hardware module. This
module directly limits the rate of writes to flash
memory. Analysis of our approach reveals that
we can considerably extend the lifetime of devices under attack while minimizing additional
hardware cost.

# Authors
Connor Jackson
Harmon Herring
Spencer Roth
Chris Sequeira
Ivan De Olivera Nunes
Adam Caulfield
