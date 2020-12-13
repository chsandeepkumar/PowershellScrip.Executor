using System;
using Microsoft.VisualStudio.TestTools.UnitTesting;

namespace ShellScript.Tests
{
    [TestClass]
    public class UnitTest1
    {
        [TestMethod]
        public void When_Sum_Two_Numbers_returns_Positive()
        {
            var x = 10;
            var y = 20;
            Assert.IsTrue(x + y > 0);
        }
    }
}
