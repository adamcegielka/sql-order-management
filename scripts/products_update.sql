UPDATE Products 
SET 
    ProductName = CASE
        WHEN ProductID = 1 THEN 'Super Widget'
        WHEN ProductID = 2 THEN 'Deluxe Gizmo'
        WHEN ProductID = 3 THEN 'Mega Gadget'
        WHEN ProductID = 4 THEN 'Ultimate Elegance'
        WHEN ProductID = 5 THEN 'Premium Excellence'
        WHEN ProductID = 6 THEN 'Supreme Quality'
        WHEN ProductID = 7 THEN 'Superior Craftsmanship'
        WHEN ProductID = 8 THEN 'Luxury Prestige'
        WHEN ProductID = 9 THEN 'Gourmet Delight'
        WHEN ProductID = 10 THEN 'Premium Selection'
        WHEN ProductID = 11 THEN 'Exquisite Flavors'
        WHEN ProductID = 12 THEN 'Artisan Craft'
        WHEN ProductID = 13 THEN 'Culinary Masterpiece'
        WHEN ProductID = 14 THEN 'Elegant Essence'
        WHEN ProductID = 15 THEN 'Refined Charm'
        WHEN ProductID = 16 THEN 'Timeless Elegance'
        WHEN ProductID = 17 THEN 'Classic Splendor'
        WHEN ProductID = 18 THEN 'Sophisticated Grace'
        WHEN ProductID = 19 THEN 'Royal Elegance'
        WHEN ProductID = 20 THEN 'Noble Craftsmanship'
        WHEN ProductID = 21 THEN 'Majestic Beauty'
        WHEN ProductID = 22 THEN 'Imperial Splendor'
        WHEN ProductID = 23 THEN 'Regal Glamour'
        WHEN ProductID = 24 THEN 'Divine Grace'
        WHEN ProductID = 25 THEN 'Celestial Charm'
        WHEN ProductID = 26 THEN 'Enchanted Essence'
        WHEN ProductID = 27 THEN 'Harmonious Symphony'
        WHEN ProductID = 28 THEN 'Radiant Aura'
        WHEN ProductID = 29 THEN 'Eternal Beauty'
        WHEN ProductID = 30 THEN 'Infinite Charm'
        WHEN ProductID = 31 THEN 'Timeless Allure'
        WHEN ProductID = 32 THEN 'Enduring Elegance'
        WHEN ProductID = 33 THEN 'Everlasting Grace'
        WHEN ProductID = 34 THEN 'Perpetual Glamour'
        WHEN ProductID = 35 THEN 'Immortal Aura'
        WHEN ProductID = 36 THEN 'Unending Splendor'
        WHEN ProductID = 37 THEN 'Forever Delight'
        WHEN ProductID = 38 THEN 'Ageless Sophistication'
        WHEN ProductID = 39 THEN 'Timeless Beauty'
        ELSE ProductName
    END
WHERE ProductID BETWEEN 1 AND 39;

SELECT * FROM products;