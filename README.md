# OldestBusinessProject

This project specifically is investigated old businesses which have records. Three tables have been used in order to conduct this study which is 'business', 'categories', and 'countries'. Plus, these tables have been created according to the 'Kimball Model'. Our fact table here is the 'business' table on the other hand dimension tables are 'categories' and 'countries'. Please see the below picture in order to understand table structures visually.

![Tables](https://user-images.githubusercontent.com/52802861/128595233-c7ca74d3-4b99-41b8-abfd-db19db25eb26.png)

Here is the Kimball Model;

![Kimbal_Model](https://user-images.githubusercontent.com/52802861/128595263-ae3b1adf-3024-4eb4-8d86-07fd05d4460d.png)


So, let's dive in. According to the 'business' table, The oldest business has been founded in the year 578 which is really long time ago. On the other hand, the newest one is founded in 1999. (Query #1)

![old vs new](https://user-images.githubusercontent.com/52802861/128595297-2b866a73-a776-4eb3-8f09-1af4bfe41944.png)

I wonder how many of these businesses have been established before the year 1000. Let's figure it out. (Query #2)

![Before year 1000](https://user-images.githubusercontent.com/52802861/128595415-55019d5a-823c-408d-9287-f6e729770e4a.png)

Six business, it is remarkable. This investigation is getting more interesting, let's find out more information about these six businesses. (Query #3)

![Six business before 1000](https://user-images.githubusercontent.com/52802861/128595435-5e75ebae-a6c6-4554-9859-662eac41f179.png)

The oldest operating company is called Kongō Gumi but what does country do let's check it out. Category table might help us. (Query #4)

![category before 1000](https://user-images.githubusercontent.com/52802861/128595465-aa389549-82fc-46f7-a8b4-fcb3decab3b9.png)

Seems like Kongō Gumi turns out a construction company. The remaining five company are distributed like this; seems like three of them is related to food and beverages and two of them are related to manufacturing. Before going further I want to open a parenthesis I've become curious about Turkey. Let's find out companies in Turkey and their business areas since I'm Turkish. (Query #*)

![Turkey Business](https://user-images.githubusercontent.com/52802861/128595487-c5072803-7d48-48ae-8c64-f3232a6a15df.png) 

Haha, I wasn't surprised by this result. We do have a good reputation in public baths thanks to Roman cultural heritage :) Let's get back to our investigation again and count the business categories in order to have a better understanding of common industries throughout history. (Query #8)

![Common Industries](https://user-images.githubusercontent.com/52802861/128595514-3f4ee0b7-6247-4aad-908a-3533ffb36bc1.png)

It looks like banking and finance are more desirable compare to construction so maybe it might just be a coincidence that the oldest business is in the construction category. When we run (Query #6) obviously seen that time gaps are highly notable until the 16th century. There could be many explanations of this; pandemics, religious pressures, world economy, etc. Also, Most businesses have been established in Europe until the 17th century. Then something happened and we started to see new businesses all around the world. Reason can be anything...such as geographical discoveries, new colonies, or expansionist policies.

![Grouped and ordered businesses](https://user-images.githubusercontent.com/52802861/128595728-0f546d6d-5e3b-4338-960f-7cde06acb257.png)

Finally, It is noticeable Aviation & Transport businesses are grouped in Africa and Asia. It should be further investigated that those businesses are of European origin due to raw material transport from colonies. Also, Most of the Banking & Finance companies are accumulated in Africa which is very interesting, I really wonder why.






