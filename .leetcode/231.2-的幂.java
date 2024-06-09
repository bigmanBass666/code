/*
 * @lc app=leetcode.cn id=231 lang=java
 *
 * [231] 2 的幂
 */

// @lc code=start
class Solution {
    public boolean isPowerOfTwo(int n) {
        if (n == 1) {
            return true;
        }

        if (n % 2 == 0) {
            return true;
        }
        return false;
    }
}
// @lc code=end

