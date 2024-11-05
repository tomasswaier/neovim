class Solution:
    def helper(self, s):
        temp = ""
        self.i += 1
        while s[self.i] != ")":
            if s[self.i] == "(":

                temp += self.helper(s)
            else:
                temp += s[self.i]
                self.i += 1
        self.i += 1
        return temp[::-1]

    # "(u(love)i)"
    def reverseParentheses(self, s: str) -> str:
        result = ""
        self.i = 0
        print(len(s))
        while self.i < len(s):
            if s[self.i] == "(":
                result += self.helper(s)
            else:
                result += s[self.i]
                self.i += 1
        return result


instance = Solution()
print(instance.reverseParentheses("a(bcdefghijkl(mno)p)q"))
