< #  
 #   - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -  
 #   N u m e n t a   P l a t f o r m   f o r   I n t e l l i g e n t   C o m p u t i n g   ( N u P I C )  
 #   C o p y r i g h t   ( C )   2 0 1 6 ,   N u m e n t a ,   I n c .     U n l e s s   y o u   h a v e   p u r c h a s e d   f r o m  
 #   N u m e n t a ,   I n c .   a   s e p a r a t e   c o m m e r c i a l   l i c e n s e   f o r   t h i s   s o f t w a r e   c o d e ,   t h e  
 #   f o l l o w i n g   t e r m s   a n d   c o n d i t i o n s   a p p l y :  
 #  
 #   T h i s   p r o g r a m   i s   f r e e   s o f t w a r e :   y o u   c a n   r e d i s t r i b u t e   i t   a n d / o r   m o d i f y  
 #   i t   u n d e r   t h e   t e r m s   o f   t h e   G N U   A f f e r o   P u b l i c   L i c e n s e   v e r s i o n   3   a s  
 #   p u b l i s h e d   b y   t h e   F r e e   S o f t w a r e   F o u n d a t i o n .  
 #  
 #   T h i s   p r o g r a m   i s   d i s t r i b u t e d   i n   t h e   h o p e   t h a t   i t   w i l l   b e   u s e f u l ,  
 #   b u t   W I T H O U T   A N Y   W A R R A N T Y ;   w i t h o u t   e v e n   t h e   i m p l i e d   w a r r a n t y   o f  
 #   M E R C H A N T A B I L I T Y   o r   F I T N E S S   F O R   A   P A R T I C U L A R   P U R P O S E .  
 #   S e e   t h e   G N U   A f f e r o   P u b l i c   L i c e n s e   f o r   m o r e   d e t a i l s .  
 #  
 #   Y o u   s h o u l d   h a v e   r e c e i v e d   a   c o p y   o f   t h e   G N U   A f f e r o   P u b l i c   L i c e n s e  
 #   a l o n g   w i t h   t h i s   p r o g r a m .     I f   n o t ,   s e e   h t t p : / / w w w . g n u . o r g / l i c e n s e s .  
 #  
 #   h t t p : / / n u m e n t a . o r g / l i c e n s e s /  
 #   - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -  
 #   S c r i p t   u s e d   t o   p r o v i s i o n   a d d i t i o n a l   r e q u i r e m e n t   n o t   s a t i s f i e d   b y   i m a g e   a l o n e .  
 #   A r g u m e n t s :  
 #       1 )   n o d e _ v e r s i o n   ( i . e .   " 5 . 1 0 . 0 " )  
 # >  
 p a r a m   (  
         [ s t r i n g ] $ n o d e _ v e r s i o n   =   " 5 . 1 0 . 0 "  
 )  
  
 #   B a s e d   o n   a p p v e y o r  
 #   s e e   h t t p s : / / w w w . a p p v e y o r . c o m / d o c s / e n t e r p r i s e / s e t u p - m a s t e r - v m /  
  
 #   S e t   P o w e r S h e l l   e x e c u t i o n   p o l i c y   t o   u n r e s t r i c t e d  
 W r i t e - H o s t   " C h a n g i n g   P S   e x e c u t i o n   p o l i c y   t o   U n r e s t r i c t e d "   - F o r e g r o u n d C o l o r   C y a n  
 S e t - E x e c u t i o n P o l i c y   U n r e s t r i c t e d   - F o r c e  
  
 #   D i s a b l e   S e r v e r   M a n a g e r   a u t o - s t a r t  
 W r i t e - H o s t   " D i s a b l i n g   S e r v e r   M a n a g e r   a u t o - s t a r t "   - F o r e g r o u n d C o l o r   C y a n  
 $ s e r v e r M a n a g e r M a c h i n e K e y   =   " H K L M : \ S O F T W A R E \ M i c r o s o f t \ S e r v e r M a n a g e r "  
 $ s e r v e r M a n a g e r U s e r K e y   =   " H K C U : \ S O F T W A R E \ M i c r o s o f t \ S e r v e r M a n a g e r "  
 i f ( T e s t - P a t h   $ s e r v e r M a n a g e r M a c h i n e K e y )   {  
         S e t - I t e m P r o p e r t y   - P a t h   $ s e r v e r M a n a g e r M a c h i n e K e y   - N a m e   " D o N o t O p e n S e r v e r M a n a g e r A t L o g o n "   - V a l u e   1  
         W r i t e - H o s t   " D i s a b l e d   S e r v e r   M a n a g e r   a t   l o g o n   f o r   a l l   u s e r s "   - F o r e g r o u n d C o l o r   G r e e n  
 }  
 i f ( T e s t - P a t h   $ s e r v e r M a n a g e r U s e r K e y )   {  
         S e t - I t e m P r o p e r t y   - P a t h   $ s e r v e r M a n a g e r U s e r K e y   - N a m e   " C h e c k e d U n a t t e n d L a u n c h S e t t i n g "   - V a l u e   0  
         W r i t e - H o s t   " D i s a b l e d   S e r v e r   M a n a g e r   f o r   c u r r e n t   u s e r "   - F o r e g r o u n d C o l o r   G r e e n  
 }  
  
 #   d i s a b l e   s c h e d u l e d   t a s k  
 s c h t a s k s   / C h a n g e   / T N   " \ M i c r o s o f t \ W i n d o w s \ S e r v e r   M a n a g e r \ S e r v e r M a n a g e r "   / D I S A B L E  
  
 #   D i s a b l e   U A C  
 W r i t e - H o s t   " D i s a b l i n g   U A C "   - F o r e g r o u n d C o l o r   C y a n  
 S e t - I t e m P r o p e r t y   " H K L M : \ S O F T W A R E \ M i c r o s o f t \ W i n d o w s \ C u r r e n t V e r s i o n \ P o l i c i e s \ S y s t e m "   - N a m e   " C o n s e n t P r o m p t B e h a v i o r A d m i n "   - V a l u e   0 0 0 0 0 0 0 0  
 S e t - I t e m P r o p e r t y   " H K L M : \ S o f t w a r e \ M i c r o s o f t \ W i n d o w s \ C u r r e n t V e r s i o n \ P o l i c i e s \ S y s t e m "   - N a m e   " E n a b l e L U A "   - V a l u e   " 0 "  
 W r i t e - H o s t   " U s e r   A c c e s s   C o n t r o l   ( U A C )   h a s   b e e n   d i s a b l e d . "   - F o r e g r o u n d C o l o r   G r e e n  
  
 #   D i s a b l e   W E R  
 W r i t e - H o s t   " D i s a b l i n g   W i n d o w s   E r r o r   R e p o r t i n g   ( W E R ) "   - F o r e g r o u n d C o l o r   C y a n  
 $ w e r K e y   =   " H K L M : \ S O F T W A R E \ M i c r o s o f t \ W i n d o w s \ W i n d o w s   E r r o r   R e p o r t i n g "  
 S e t - I t e m P r o p e r t y   $ w e r K e y   - N a m e   " F o r c e Q u e u e "   - V a l u e   1  
 i f ( T e s t - P a t h   " $ w e r K e y \ C o n s e n t " )   {  
         S e t - I t e m P r o p e r t y   " $ w e r K e y \ C o n s e n t "   - N a m e   " D e f a u l t C o n s e n t "   - V a l u e   1  
 }  
 W r i t e - H o s t   " W i n d o w s   E r r o r   R e p o r t i n g   ( W E R )   d i a l o g   h a s   b e e n   d i s a b l e d . "   - F o r e g r o u n d C o l o r   G r e e n  
  
 #   D i s a b l e   I E   E S C  
 W r i t e - H o s t   " D i s a b l i n g   I n t e r n e t   E x p l o r e r   E S C "   - F o r e g r o u n d C o l o r   C y a n  
 $ A d m i n K e y   =   " H K L M : \ S O F T W A R E \ M i c r o s o f t \ A c t i v e   S e t u p \ I n s t a l l e d   C o m p o n e n t s \ { A 5 0 9 B 1 A 7 - 3 7 E F - 4 b 3 f - 8 C F C - 4 F 3 A 7 4 7 0 4 0 7 3 } "  
 $ U s e r K e y   =   " H K L M : \ S O F T W A R E \ M i c r o s o f t \ A c t i v e   S e t u p \ I n s t a l l e d   C o m p o n e n t s \ { A 5 0 9 B 1 A 8 - 3 7 E F - 4 b 3 f - 8 C F C - 4 F 3 A 7 4 7 0 4 0 7 3 } "  
 i f ( ( T e s t - P a t h   $ A d m i n K e y )   - o r   ( T e s t - P a t h   $ U s e r K e y ) )   {  
         S e t - I t e m P r o p e r t y   - P a t h   $ A d m i n K e y   - N a m e   " I s I n s t a l l e d "   - V a l u e   0  
         S e t - I t e m P r o p e r t y   - P a t h   $ U s e r K e y   - N a m e   " I s I n s t a l l e d "   - V a l u e   0  
         S t o p - P r o c e s s   - N a m e   E x p l o r e r  
         W r i t e - H o s t   " I E   E n h a n c e d   S e c u r i t y   C o n f i g u r a t i o n   ( E S C )   h a s   b e e n   d i s a b l e d . "   - F o r e g r o u n d C o l o r   G r e e n  
 }  
  
 #   A l l o w   c o n n e c t i n g   t o   a n y   h o s t   v i a   W i n R M  
 W r i t e - H o s t   " W i n R M   -   a l l o w   *   h o s t s "   - F o r e g r o u n d C o l o r   C y a n  
 w i n r m   q u i c k c o n f i g   - q  
 c m d   / c   ' w i n r m   s e t   w i n r m / c o n f i g / c l i e n t   @ { T r u s t e d H o s t s = " * " } '  
 w i n r m   s e t   w i n r m / c o n f i g / w i n r s   ' @ { M a x M e m o r y P e r S h e l l M B = " 2 0 4 8 " } '  
 W r i t e - H o s t   " W i n R M   c o n f i g u r e d "   - F o r e g r o u n d C o l o r   G r e e n  
  
 #   D i s a b l e   n e w   n e t w o r k   l o c a t i o n   w i z a r d  
 r e g   a d d   H K E Y _ L O C A L _ M A C H I N E \ S Y S T E M \ C u r r e n t C o n t r o l S e t \ C o n t r o l \ N e t w o r k \ N e w N e t w o r k W i n d o w O f f   / f  
 r e g   a d d   H K E Y _ L O C A L _ M A C H I N E \ S Y S T E M \ C u r r e n t C o n t r o l S e t \ C o n t r o l \ N e t w o r k \ N e t w o r k L o c a t i o n W i z a r d   / v   H i d e W i z a r d   / t   R E G _ D W O R D   / d   1   / f  
  
 W r i t e - H o s t   " I n s t a l l i n g   c h o c o l a t e y   . . . "  
 $ C h o c o I n s t a l l P a t h   =   " $ e n v : S y s t e m D r i v e \ P r o g r a m D a t a \ C h o c o l a t e y \ b i n "  
 i f   ( ! ( T e s t - P a t h   $ C h o c o I n s t a l l P a t h ) )   {  
         i e x   ( ( n e w - o b j e c t   n e t . w e b c l i e n t ) . D o w n l o a d S t r i n g ( ' h t t p s : / / c h o c o l a t e y . o r g / i n s t a l l . p s 1 ' ) )  
 }  
  
 c h o c o l a t e y   f e a t u r e   e n a b l e   - n = a l l o w G l o b a l C o n f i r m a t i o n  
  
 #   I n s t a l l   P y t h o n   2 . 7  
 c h o c o   i n s t a l l   p y t h o n 2  
  
 #   I n s t a l l   n o d e j s  
 c h o c o   i n s t a l l   n o d e j s   - - v e r s i o n   $ n o d e _ v e r s i o n  
  
 #   I n s t a l l   V i s u a l   C + +   B u i l d   T o o l s   2 0 1 5  
 c h o c o   i n s t a l l   v i s u a l c p p b u i l d t o o l s  
  
 #   I n s t a l l   V C   f o r   p y t h o n  
 c h o c o   i n s t a l l   v c p y t h o n 2 7  
  
 #   I n s t a l l   g i t  
 c h o c o   i n s t a l l   g i t  
  
 c h o c o l a t e y   f e a t u r e   d i s a b l e   - n = a l l o w G l o b a l C o n f i r m a t i o n  
  
 #   M o u n t   s h a r e d   f o l d e r   t o   ' x : '   d r i v e  
 #   M u s t   m a t c h   s h a r e d   f o l d e r   n a m e   i n   v a g r a n t   f i l e  
 #   S e e   ' c o n f i g . v m . s y n c e d _ f o l d e r ' )  
 n e t   u s e   x :   \ \ V B O X S V R \ s h a r e d   / P E R S I S T E N T : Y E S  
 