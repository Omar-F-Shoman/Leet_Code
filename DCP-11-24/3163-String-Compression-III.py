class Solution:
    def compressedString(self, word: str) -> str:
        if not word:
            return ""
        
        comp = []
        i = 0
        
        while i < len(word):
            # Count consecutive occurrences of current character
            count = 1
            while i + 1 < len(word) and word[i] == word[i + 1] and count < 9:
                count += 1
                i += 1
                
            # Append count followed by character to result
            comp.append(str(count) + word[i])
            i += 1
            
        return "".join(comp)

